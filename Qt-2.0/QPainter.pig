#include <qpainter.h>

class QPainter {
    QPainter();
    QPainter(const QPaintDevice *);
    QPainter(const QPaintDevice *, const QWidget *);
    ~QPainter();
    const QColor &backgroundColor() const;
    Qt::BGMode backgroundMode() const;
    bool begin(const QPaintDevice *);
    bool begin(const QPaintDevice *, const QWidget *);
    QRect boundingRect(const QRect &, int, const char *, int = -1, char **{internal} = 0);
    QRect boundingRect(int, int, int, int, int, const char *, int = -1, char **{internal} = 0);
    const QBrush &brush() const;
    const QPoint &brushOrigin() const;
    const QRegion &clipRegion() const;
    QPaintDevice *device() const;
    void drawArc(const QRect &, int, int);
    void drawArc(int, int, int, int, int, int);
    void drawChord(const QRect &, int, int);
    void drawChord(int, int, int, int, int, int);
    void drawEllipse(const QRect &);
    void drawEllipse(int, int, int, int);
    void drawImage(const QPoint &, const QImage &);
    void drawImage(const QPoint &, const QImage &, const QRect &);
    void drawImage(int, int, const QImage &, int = 0, int = 0, int = -1, int = -1);
    void drawLine(const QPoint &, const QPoint &);
    void drawLine(int, int, int, int);
    void drawLineSegments(const QPointArray &, int = 0, int = -1);
    void drawPicture(const QPicture &);
    void drawPie(const QRect &, int, int);
    void drawPie(int, int, int, int, int, int);
    void drawPixmap(const QPoint &, const QPixmap &);
    void drawPixmap(const QPoint &, const QPixmap &, const QRect &);
    void drawPixmap(int, int, const QPixmap &, int = 0, int = 0, int = -1, int = -1);
    void drawPoint(const QPoint &);
    void drawPoint(int, int);
    void drawPoints(const QPointArray &, int = 0, int = -1);
    void drawPolyline(const QPointArray &, int = 0, int = -1);
    void drawPolygon(const QPointArray &, bool = FALSE, int = 0, int = -1);
    void drawQuadBezier(const QPointArray &, int = 0);
    void drawRect(const QRect &);
    void drawRect(int, int, int, int);
    void drawRoundRect(const QRect &, int, int);
    void drawRoundRect(int, int, int, int, int, int);
    void drawText(const QPoint &, const QString &, int = -1);
    void drawText(int, int, const QString &, int = -1);
    void drawText(const QRect &, int, const QString &, int = -1, QRect * = 0, char **{internal} = 0);
    void drawText(int, int, int, int, int, const QString &, int = -1, QRect * = 0, char **{internal} = 0);
    void drawTiledPixmap(const QRect &, const QPixmap &);
    void drawTiledPixmap(const QRect &, const QPixmap &, const QPoint &);
    void drawTiledPixmap(int, int, int, int, const QPixmap &, int = 0, int = 0);
    void drawWinFocusRect(const QRect &);
    void drawWinFocusRect(const QRect &, const QColor &);
    void drawWinFocusRect(int, int, int, int);
    void drawWinFocusRect(int, int, int, int, const QColor &);
    bool end();
    void eraseRect(const QRect &);
    void eraseRect(int, int, int, int);
    void fillRect(const QRect &, const QBrush &);
    void fillRect(int, int, int, int, const QBrush &);
    void flush();
    const QFont &font() const;
    QFontInfo fontInfo() const;
    QFontMetrics fontMetrics() const;
    HANDLE handle() const;
    bool hasClipping() const;
    bool hasViewXForm() const;
    bool hasWorldXForm() const;
    bool isActive() const;
    void lineTo(const QPoint &);
    void lineTo(int, int);
    void moveTo(const QPoint &);
    void moveTo(int, int);
    const QPen &pen() const;
    Qt::RasterOp rasterOp() const;
    static void redirect(QPaintDevice *, QPaintDevice *);
    void resetXForm();
    void restore();
    void restoreWorldMatrix();
    void rotate(float);
    void save();
    void scale(float, float);
    void saveWorldMatrix();
    void setBackgroundColor(const QColor &);
    void setBackgroundMode(Qt::BGMode);
    void setBrush(const QBrush &);
    void setBrush(const QColor &);
    void setBrush(Qt::BrushStyle);
    void setBrushOrigin(const QPoint &);
    void setBrushOrigin(int, int);
    void setClipping(bool);
    void setClipRect(const QRect &);
    void setClipRect(int, int, int, int);
    void setClipRegion(const QRegion &);
    void setFont(const QFont &);
    void setPen(const QColor &);
    void setPen(const QPen &);
    void setPen(Qt::PenStyle);
    void setRasterOp(Qt::RasterOp);
    void setTabArray(int * {intarray});
    void setTabStops(int);
    void setViewport(const QRect &);
    void setViewport(int, int, int, int);
    void setViewXForm(bool);
    void setWindow(const QRect &);
    void setWindow(int, int, int, int);
    void setWorldMatrix(const QWMatrix &, bool = FALSE);
    void setWorldXForm(bool);
    void shear(float, float);
    int * {intarray} tabArray() const;
    int tabStops() const;
    void translate(float, float);
    QRect viewport() const;
    QRect window() const;
    const QWMatrix &worldMatrix() const;
    QPoint xForm(const QPoint &) const;
    QPointArray xForm(const QPointArray &) const;
    QRect xForm(const QRect &) const;
    QPointArray xForm(const QPointArray &, int, int) const;
    QPoint xFormDev(const QPoint &) const;
    QPointArray xFormDev(const QPointArray &) const;
    QRect xFormDev(const QRect &) const;
    QPointArray xFormDev(const QPointArray &, int, int) const;
} Qt::Painter;