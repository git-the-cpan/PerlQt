/*
 * PerlQt interface to qpntarry.h
 *
 * Copyright (C) 1997, Ashley Winters <jql@accessone.com>
 *
 * You may distribute under the terms of the LGPL as specified in the
 * README file
 */

#include "ppntarry.h"
#include "ppoint.h"
#include "prect.h"

MODULE = QPointArray		PACKAGE = QPointArray

PROTOTYPES: DISABLE

PPointArray *
PPointArray::new(...)
    CASE: items == 1
	CODE:
	RETVAL = new PPointArray();
	OUTPUT:
	RETVAL
    CASE: items == 2 && sv_isobject(ST(1)) && sv_derived_from(ST(1), "QPointArray")
	PREINIT:
	QPointArray *pa = pextract(QPointArray, 1);
	CODE:
	RETVAL = new PPointArray(*pa);
	OUTPUT:
	RETVAL
    CASE: sv_isobject(ST(1))
	PREINIT:
	QRect *r = pextract(QRect, 1);
	bool closed = (items > 2) ? (SvIV(ST(2)) ? TRUE : FALSE) : FALSE;
	CODE:
	RETVAL = new PPointArray(*r, closed);
    CASE: items == 2
	PREINIT:
	int size = SvIV(ST(1));
	CODE:
	RETVAL = new PPointArray(size);
	OUTPUT:
	RETVAL
    CASE:
	PREINIT:
	int nPoints = items - 1;
	QCOORD *points;
	New(123, points, nPoints, QCOORD);
	CODE:
	for(int i = 1; i < items; i++)
	    points[i-1] = (QCOORD)SvIV(ST(i));
	RETVAL = new PPointArray(nPoints, points);
	Safefree(points);
	OUTPUT:
	RETVAL

void
QPointArray::DESTROY()
    CODE:
    if(want_destroy(ST(0)))
	delete THIS;

PPoint *
QPointArray::at(i)
    int i
    CODE:
    RETVAL = new PPoint(THIS->at(i));
    OUTPUT:
    RETVAL

PRect *
QPointArray::boundingRect()
    CODE:
    RETVAL = new PRect(THIS->boundingRect());
    OUTPUT:
    RETVAL

PPointArray *
QPointArray::copy()
    CODE:
    RETVAL = new PPointArray(THIS->copy());
    OUTPUT:
    RETVAL

void
QPointArray::detach()

bool
QPointArray::fill(p, size = -1)
    QPoint *p
    int size
    CODE:
    RETVAL = THIS->fill(*p, size);
    OUTPUT:
    RETVAL

bool
QPointArray::isEmpty()

bool
QPointArray::isNull()

void
QPointArray::makeArc(x, y, w, h, a1, a2)
    int x
    int y
    int w
    int h
    int a1
    int a2

void
QPointArray::makeEllipse(x, y, w, h)
    int x
    int y
    int w
    int h

PPoint *
QPointArray::point(i, ...)
    CASE: items > 3
	uint i
	PREINIT:
	int x, y;
	CODE:
	THIS->point(i, &x, &y);
	sv_setiv(ST(2), x);
	sv_setiv(ST(3), y);
	XSRETURN_EMPTY;
    CASE:
	uint i
	CODE:
	RETVAL = new PPoint(THIS->point(i));
	OUTPUT:
	RETVAL

bool
QPointArray::putPoints(index, firstx, firsty, ...)
    int index
    PREINIT:
    int nPoints = items - 2;
    QCOORD *points;
    New(123, points, nPoints, QCOORD);
    CODE:
    for(int i = 2; i < items; i++)
        points[i-2] = (QCOORD)SvIV(ST(i));
    RETVAL = THIS->putPoints(index, nPoints/2, points);
    Safefree(points);
    OUTPUT:
    RETVAL

PPointArray *
QPointArray::quadBezier()
    CODE:
    RETVAL = new PPointArray(THIS->quadBezier());
    OUTPUT:
    RETVAL

bool
QPointArray::resize(size)
    uint size

void
QPointArray::setPoint(i, ...)
    CASE: items > 3
	PREINIT:
	uint i = SvIV(ST(1));
	int x = SvIV(ST(2));
	int y = SvIV(ST(3));
	CODE:
	THIS->setPoint(i, x, y);
    CASE:
	PREINIT:
	uint i = SvIV(ST(1));
	QPoint *point = pextract(QPoint, 2);
	CODE:
	THIS->setPoint(i, *point);

bool
QPointArray::setPoints(firstx, firsty, ...)
    PREINIT:
    int nPoints = items - 1;
    QCOORD *points;
    New(123, points, nPoints, QCOORD);
    CODE:
    for(int i = 1; i < items; i++)
	points[i-1] = (QCOORD)SvIV(ST(i));
    RETVAL = THIS->setPoints(nPoints/2, points);
    Safefree(points);
    OUTPUT:
    RETVAL

uint
QPointArray::size()

void
QPointArray::translate(dx, dy)
    int dx
    int dy

bool
QPointArray::truncate(pos)
    uint pos


bool
QPointArray::beq(parray, misc)
    QPointArray *parray
    CODE:
    RETVAL = (*THIS == *parray);
    OUTPUT:
    RETVAL

bool
QPointArray::bne(parray, misc)
    QPointArray *parray
    CODE:
    RETVAL = (*THIS != *parray);
    OUTPUT:
    RETVAL
