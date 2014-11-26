.class public Lcom/android/mms/ui/SlideView$MovieView;
.super Landroid/widget/ImageView;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MovieView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v0, p1

    # setter for: Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v12, v0}, Lcom/android/mms/ui/SlideView;->access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v13, 0x1

    # setter for: Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z
    invoke-static {v12, v13}, Lcom/android/mms/ui/SlideView;->access$1302(Lcom/android/mms/ui/SlideView;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mResume:Z
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1400(Lcom/android/mms/ui/SlideView;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v13, 0x1

    # setter for: Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z
    invoke-static {v12, v13}, Lcom/android/mms/ui/SlideView;->access$1502(Lcom/android/mms/ui/SlideView;Z)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v12, "Mms/SlideView"

    const-string v13, "MovieView.dispatchDraw() : mSmilPlayer is null!!"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/high16 v12, -0x1000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovieStart:J
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # setter for: Lcom/android/mms/ui/SlideView;->mMovieStart:J
    invoke-static {v12, v7, v8}, Lcom/android/mms/ui/SlideView;->access$1702(Lcom/android/mms/ui/SlideView;J)J

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Movie;->duration()I

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x3e8

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mResume:Z
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1400(Lcom/android/mms/ui/SlideView;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v13, 0x0

    # setter for: Lcom/android/mms/ui/SlideView;->mPause:Z
    invoke-static {v12, v13}, Lcom/android/mms/ui/SlideView;->access$1902(Lcom/android/mms/ui/SlideView;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v13, 0x0

    # setter for: Lcom/android/mms/ui/SlideView;->mResume:Z
    invoke-static {v12, v13}, Lcom/android/mms/ui/SlideView;->access$1402(Lcom/android/mms/ui/SlideView;Z)Z

    :cond_4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$2000(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$2000(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovieStart:J
    invoke-static {v14}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    int-to-long v14, v3

    rem-long/2addr v12, v14

    long-to-int v10, v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/graphics/Movie;->setTime(I)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMoviePlay:Z
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$2200(Lcom/android/mms/ui/SlideView;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Movie;->width()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v13}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Movie;->height()I

    move-result v13

    invoke-static {v12, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v1, v13, v14}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v13}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Movie;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v14}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Movie;->height()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    iget v6, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v13}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Movie;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;
    invoke-static {v14}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Movie;->height()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v6, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # setter for: Lcom/android/mms/ui/SlideView;->mMovieWidth:I
    invoke-static {v12, v6}, Lcom/android/mms/ui/SlideView;->access$2302(Lcom/android/mms/ui/SlideView;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    # setter for: Lcom/android/mms/ui/SlideView;->mMovieLeft:I
    invoke-static {v12, v13}, Lcom/android/mms/ui/SlideView;->access$2402(Lcom/android/mms/ui/SlideView;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # setter for: Lcom/android/mms/ui/SlideView;->mMovieTop:I
    invoke-static {v12, v4}, Lcom/android/mms/ui/SlideView;->access$2502(Lcom/android/mms/ui/SlideView;I)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovieLeft:I
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovieTop:I
    invoke-static {v13}, Lcom/android/mms/ui/SlideView;->access$2500(Lcom/android/mms/ui/SlideView;)I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mDiffTime:J
    invoke-static {v12}, Lcom/android/mms/ui/SlideView;->access$2100(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v12

    sub-long v12, v7, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mMovieStart:J
    invoke-static {v14}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    int-to-long v14, v3

    rem-long/2addr v12, v14

    long-to-int v10, v12

    goto/16 :goto_1
.end method
