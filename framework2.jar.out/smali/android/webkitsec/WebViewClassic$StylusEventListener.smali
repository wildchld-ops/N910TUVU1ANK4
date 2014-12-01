.class Landroid/webkitsec/WebViewClassic$StylusEventListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private final HORIZONAL_THRESHOLD:I

.field private final VERTICAL_THRESHOLD:I

.field private isPenTextSelectionAutoScroll:Z

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mSelectionSound:Landroid/media/SoundPool;

.field private mSoundId:I

.field private mStartX:F

.field private mStartY:F

.field private final soundURIs:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->DELTA:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->VERTICAL_THRESHOLD:I

    const/16 v0, 0xa

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->HORIZONAL_THRESHOLD:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mDirLTR:Z

    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->isPenTextSelectionAutoScroll:Z

    const-string v0, "/media/audio/ui/TextSelection.ogg"

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->soundURIs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$StylusEventListener;-><init>(Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method

.method private isWebView(I)Z
    .locals 6

    const/16 v2, 0xd3

    if-ne p1, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mLastHoveredTime:J
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$13500(Landroid/webkitsec/WebViewClassic;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private playSound()V
    .locals 8

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/TextSelection.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    invoke-virtual {v0, v7, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSoundId:I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    iget v1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSoundId:I

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.android.browser"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v17, "webview"

    const-string/jumbo v18, "onStylusButtonEvent start"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkitsec/WebViewClassic$StylusEventListener;->isWebView(I)Z

    move-result v17

    if-nez v17, :cond_2

    const-string/jumbo v17, "webview"

    const-string/jumbo v18, "onStylusButtonEvent: Touch event - Out of Boundary"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebView;->clearSelection()V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    goto :goto_0

    :cond_2
    sparse-switch v2, :sswitch_data_0

    :cond_3
    :goto_1
    const-string/jumbo v17, "webview"

    const-string/jumbo v18, "onStylusButtonEvent END"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$10600(Landroid/webkitsec/WebViewClassic;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xb9

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xb9

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xb9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    if-eqz v7, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    :goto_2
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    if-eqz v7, :cond_d

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v5, v5, v17

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v6, v6, v17

    :goto_3
    const/16 v17, 0x0

    cmpg-float v17, v5, v17

    if-gez v17, :cond_7

    const/4 v5, 0x0

    :cond_7
    const/16 v17, 0x0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_8

    const/4 v6, 0x0

    :cond_8
    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    move/from16 v18, v0

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    move/from16 v18, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v13

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    float-to-int v0, v5

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    float-to-int v0, v6

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->isPenTextSelectionAutoScroll:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    # invokes: Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$13200(Landroid/webkitsec/WebViewClassic;Landroid/graphics/RectF;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    iput v12, v14, Landroid/graphics/Point;->x:I

    iput v13, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xc8

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xc8

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v4, v0, :cond_9

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xc8

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v3, v0, :cond_9

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0xc8

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v3, v0, :cond_a

    :cond_9
    const-string/jumbo v17, "webview"

    const-string v18, "inside autoscroll condition"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v14}, Landroid/webkitsec/WebViewClassic;->handleSpenTextSelectionAutoScroll(IILandroid/graphics/Point;)Landroid/graphics/Point;

    :cond_a
    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mStartX "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mStartY "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "endX "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " endY "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "offset.x "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " offset.y "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "startCurPositionX "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " startCurPositionY "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "endCurPositionX "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " endCurPositionY "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v12, v13, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # invokes: Landroid/webkitsec/WebViewClassic;->setUpAdvSelect()Z
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$13300(Landroid/webkitsec/WebViewClassic;)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v17

    const/16 v18, 0x22a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    goto/16 :goto_2

    :cond_d
    const/16 v17, 0x0

    aget v17, v10, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v5, v5, v17

    const/16 v17, 0x1

    aget v17, v10, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v6, v6, v17

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v10, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v10, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v13

    goto/16 :goto_4

    :sswitch_1
    if-eqz v7, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    :goto_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mActionMove:Z
    invoke-static/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->access$13402(Landroid/webkitsec/WebViewClassic;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectingText:Z
    invoke-static/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->access$10900(Landroid/webkitsec/WebViewClassic;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    goto :goto_5

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xb9

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xb9

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static/range {v17 .. v18}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xb9

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "action_up mSpenTextSelectionMode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->access$10600(Landroid/webkitsec/WebViewClassic;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    :sswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_0
        0xd6 -> :sswitch_3
    .end sparse-switch
.end method
