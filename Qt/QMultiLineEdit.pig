#include <qmultilineedit.h>

suicidal virtual class QMultiLineEdit : virtual QTableView {
    enum EchoMode { Normal, NoEcho, Password };

    QMultiLineEdit(QWidget * = 0, const char * = 0);
    virtual ~QMultiLineEdit();
    int alignment() const;
    void append(const QString &) slot;
    bool atBeginning() const;
    bool atEnd() const;
    bool autoUpdate() const;
    void clear() slot;
    void copy() const;
    void copyText() const;
    void cursorPosition(int *, int *) const;
    void cursorWordBackward(bool);
    void cursorWordForward(bool);
    void cut() slot;
    void deselect() slot;
    QMultiLineEdit::EchoMode echoMode() const;
    bool edited() const;
    void getCursorPosition(int *, int *) const;
    int hMargin() const;
    virtual void insertAt(const QString &, int, int, bool = FALSE);
    void insert(const QString &) slot;
    virtual void insertLine(const QString &, int = -1);
    bool isOverwriteMode() const;
    bool isReadOnly() const;
    int maxLineLength() const;
    int maxLineWidth() const;
    int maxLines() const;
    virtual QSize minimumSizeHint() const;
    int numLines() const;
    void paste() slot;
    virtual void removeLine(int);
    void selectAll() slot;
    void setAlignment(int);
    virtual void setAutoUpdate(bool);
    virtual void setCursorPosition(int, int, bool = FALSE);
    virtual void setEchoMode(QMultiLineEdit::EchoMode);
    void setEdited(bool);
    virtual void setFixedVisibleLines(int);
    virtual void setFont(const QFont &);
    virtual void setHMargin(int);
    virtual void setMaxLineLength(int);
    virtual void setMaxLines(int);
    virtual void setOverwriteMode(bool) slot;
    virtual void setReadOnly(bool) slot;
    virtual void setSelection(int, int, int, int);
    virtual void setText(const QString &) slot;
    virtual void setValidator(const QValidator *);
    virtual QSize sizeHint() const;
    virtual QSizePolicy sizePolicy() const;
    QString text() const;
    QString textLine(int) const;
    const QValidator *validator() const;
protected:
    virtual void backspace();
    virtual void cursorDown(bool = FALSE);
    virtual void cursorLeft(bool = FALSE, bool = TRUE);
    virtual void cursorRight(bool = FALSE, bool = TRUE);
    QPoint cursorPoint() const;
    virtual void cursorUp(bool = FALSE);
    virtual void del();
    virtual void dragLeaveEvent(QDragLeaveEvent *);
    virtual void dragMoveEvent(QDragMoveEvent *);
    virtual void dropEvent(QDropEvent *);
    virtual void end(bool = FALSE);
    virtual void focusInEvent(QFocusEvent *);
    virtual void focusOutEvent(QFocusEvent *);
    bool getMarkedRegion(int *, int *, int *, int *) const;
    QString *getString(int) const;
    bool hasMarkedText() const;
    virtual void home(bool = FALSE);
    virtual void insert(const QString &, bool);
    virtual void insertChar(char);
    virtual void keyPressEvent(QKeyEvent *);
    virtual void killLine();
    virtual void leaveEvent(QEvent *);
    int lineLength(int) const;
    QString markedText() const;
    virtual void mouseDoubleClickEvent(QMouseEvent *);
    virtual void mouseMoveEvent(QMouseEvent *);
    virtual void mousePressEvent(QMouseEvent *);
    virtual void mouseReleaseEvent(QMouseEvent *);
    virtual void newLine();
    virtual void pageDown(bool = FALSE);
    virtual void pageUp(bool = FALSE);
    virtual void paintCell(QPainter *, int, int);
    virtual void resizeEvent(QResizeEvent *);
    void returnPressed() signal;
    QString stringShown(int) const;
    void textChanged() signal;
    int textWidth(int);
    int textWidth(const QString &);
    virtual void timerEvent(QTimerEvent *);
    virtual void wheelEvent(QWheelEvent *);
} Qt::MultiLineEdit;
