#include <qscrollview.h>

suicidal virtual class QScrollView : QFrame, virtual QWidget {
    enum ResizePolicy { Default, Manual, AutoOne };
    enum ScrollBarMode { Auto, AlwaysOff, AlwaysOn };
    QScrollView(QWidget * = 0, const char * = 0, Qt::WFlags = 0);
    virtual ~QScrollView();
    void center(int, int) slot;
    void center(int, int, float, float) slot;
    bool childIsVisible(QWidget *);
    int childX(QWidget *);
    int childY(QWidget *);
    QWidget *clipper() const;
    int contentsHeight() const;
    QPoint contentsToViewport(const QPoint &);
    void contentsToViewport(int, int, int &, int &);
    int contentsWidth() const;
    int contentsX() const;
    int contentsY() const;
    virtual void addChild(QWidget *);
    QWidget *cornerWidget() const;
    void enableClipper(bool);
    void ensureVisible(int, int) slot;
    void ensureVisible(int, int, int, int) slot;
    QScrollBar *horizontalScrollBar();
    QScrollView::ScrollBarMode hScrollBarMode() const;
    virtual QSize minimumSizeHint() const;
    virtual void moveChild(QWidget *, int, int);
    void removeChild(QObject *);     // Bizzare...
    void removeChild(QWidget *);
    void repaintContents(int, int, int, int, bool = TRUE);
    void resize(const QSize &);
    virtual void resize(int, int);
    virtual void resizeContents(int, int) slot;
    QScrollView::ResizePolicy resizePolicy() const;
    void scrollBy(int, int) slot;
    void showChild(QWidget *, bool = TRUE);
    virtual void setContentsPos(int, int) slot;
    virtual void setCornerWidget(QWidget *);
    virtual void setEnabled(bool) slot;
    virtual void setHScrollBarMode(QScrollView::ScrollBarMode);
    virtual void setResizePolicy(QScrollView::ResizePolicy);
    virtual void setVScrollBarMode(QScrollView::ScrollBarMode);
    virtual void show();
    virtual QSizePolicy sizePolicy() const;
    void updateContents(int, int, int, int);
    void updateScrollBars() slot;
    QScrollBar *verticalScrollBar();
    QWidget *viewport() const;
    QSize viewportSize(int, int) const;
    QPoint viewportToContents(const QPoint &);
    void viewportToContents(int, int, int &, int &);
    int visibleHeight() const;
    int visibleWidth() const;
    QScrollView::ScrollBarMode vScrollBarMode() const;
protected:
    int bottomMargin() const;
    virtual void contentsDragEnterEvent(QDragEnterEvent *);
    virtual void contentsDragMoveEvent(QDragMoveEvent *);
    virtual void contentsDragLeaveEvent(QDragLeaveEvent *);
    virtual void contentsDropEvent(QDropEvent *);
    virtual void contentsMouseDoubleClickEvent(QMouseEvent *);
    virtual void contentsMouseMoveEvent(QMouseEvent *);
    virtual void contentsMousePressEvent(QMouseEvent *);
    virtual void contentsMouseReleaseEvent(QMouseEvent *);
    void contentsMoving(int, int) signal;
    virtual void contentsWheelEvent(QWheelEvent *);
    virtual void drawContents(QPainter *, int, int, int, int);
    virtual void drawContentsOffset(QPainter *, int, int, int, int, int, int);
    virtual bool eventFilter(QObject *, QEvent *);
    virtual bool focusNextPrevChild(bool);
    virtual void frameChanged();
    int leftMargin() const;
    virtual void resizeEvent(QResizeEvent *);
    int rightMargin() const;
    virtual void setHBarGeometry(QScrollBar &, int, int, int, int);
    virtual void setMargins(int, int, int, int);
    virtual void setVBarGeometry(QScrollBar &, int, int, int, int);
    int topMargin() const;
    virtual void viewportDragEnterEvent(QDragEnterEvent *);
    virtual void viewportDragMoveEvent(QDragMoveEvent *);
    virtual void viewportDragLeaveEvent(QDragLeaveEvent *);
    virtual void viewportDropEvent(QDropEvent *);
    virtual void viewportMouseDoubleClickEvent(QMouseEvent *);
    virtual void viewportMouseMoveEvent(QMouseEvent *);
    virtual void viewportMousePressEvent(QMouseEvent *);
    virtual void viewportMouseReleaseEvent(QMouseEvent *);
    virtual void viewportPaintEvent(QPaintEvent *);
    virtual void viewportResizeEvent(QResizeEvent *);
    virtual void viewportWheelEvent(QWheelEvent *);
    virtual void wheelEvent(QWheelEvent *);

; Time to cover for Troll Tech's mistake...
;    virtual void drawContents(QPainter *);
    virtual void drawContentsMask(QPainter *);
    virtual void drawFrame(QPainter *);
    virtual void drawFrameMask(QPainter *);
    virtual void frameChanged();
    virtual void setFrameRect(const QRect &);
    virtual void setFrameStyle(int);
    virtual void setLineWidth(int);
    virtual void setMargin(int);
    virtual void setMidLineWidth(int);
} Qt::ScrollView;