#include <qrect.h>

struct QRect {
    QRect();
    QRect(const QRect &);
    QRect(const QPoint &, const QPoint &);
    QRect(const QPoint &, const QSize &);
    QRect(int, int, int, int);
    QRect &operator = (const QRect &);
;    QRect operator | (const QRect &) const;
;    QRect operator & (const QRect &) const;
;    QRect &operator |= (const QRect &);
;    QRect &operator &= (const QRect &);
    static bool operator == (const QRect &, const QRect &) : operator == ($0, $1);
    static bool operator != (const QRect &, const QRect &) : operator != ($0, $1);
    const char *{serial} operator << () const : pig_serialize($this);
    void operator >> (const char *{serial}) : pig_deserialize($this, $1);
    int bottom() const;
    QPoint bottomLeft() const;
    QPoint bottomRight() const;
    QPoint center() const;
    bool contains(const QPoint &, bool = FALSE) const;
    bool contains(const QRect &, bool = FALSE) const;
    void coords(int *, int *, int *, int *) const;
    int height() const;
    QRect intersect(const QRect &) const;
    bool intersects(const QRect &) const;
    bool isEmpty() const;
    bool isNull() const;
    bool isValid() const;
    int left() const;
    void moveBottomLeft(const QPoint &);
    void moveBottomRight(const QPoint &);
    void moveBy(int, int);
    void moveCenter(const QPoint &);
    void moveTopLeft(const QPoint &);
    void moveTopRight(const QPoint &);
    QRect normalize() const;
    void rect(int *, int *, int *, int *) const;
    int right() const;
    void setBottom(int);
    void setCoords(int, int, int, int);
    void setHeight(int);
    void setLeft(int);
    void setRect(int, int, int, int);
    void setRight(int);
    void setSize(const QSize &);
    void setTop(int);
    void setWidth(int);
    void setX(int);
    void setY(int);
    QSize size() const;
    int top() const;
    QPoint topLeft() const;
    QPoint topRight() const;
    QRect unite(const QRect &) const;
    int width() const;
    int x() const;
    int y() const;
} Qt::Rect;
