#ifndef PFONT_H
#define PFONT_H

/*
 * Declaration of the PFont class
 *
 * Copyright (C) 1997, Ashley Winters <jql@accessone.com>
 *
 * You may distribute under the terms of the LGPL as specified in the
 * README file
 */

#undef bool
#include "qfont.h"
#include "pqt.h"

class PFont : public QFont {
public:
    PFont() {}
    PFont(const char *family, int pointSize = 12, int weight = QFont::Normal,
	  bool italic = FALSE) : QFont(family, pointSize, weight, italic) {}

    PFont(const QFont &font) : QFont(font) {}
};

typedef QFont::CharSet QFont__CharSet;
typedef QFont::StyleHint QFont__StyleHint;

#endif  // PFONT_H
