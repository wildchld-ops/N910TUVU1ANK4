.class public Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final EDGE_LEFT_TOP:I = 0x5

.field public static final EDGE_RIGHT_TOP:I = 0x9

.field private static final TAG:Ljava/lang/String; = "MultiWindowEdgeDetector"

.field private static mHeight:F

.field private static mHeightForPen:F

.field private static mIsSupportCocktailBar:Z

.field private static mWidth:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdge:Z

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    iput-object p1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    return-void
.end method

.method private checkCocktailBar(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-ne v0, v2, :cond_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getEdgeFlag(ILandroid/view/MotionEvent;)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    sput v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    :cond_0
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    move v1, v0

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x1

    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_2
    :goto_1
    const-string v4, "MultiWindowEdgeDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeFlag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_3
    int-to-float v4, p0

    sget v5, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method private isKnox()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_window_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_popup_view_shortcut"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->isKnox()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public isEdge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    return v0
.end method

.method public onTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    sget-boolean v2, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v2, v1

    :goto_1
    return v2

    :pswitch_1
    invoke-static {p1, p2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v0

    sget-boolean v2, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->checkCocktailBar(I)I

    move-result v0

    :cond_2
    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-ne v0, v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, p2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    move v2, v3

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    const/4 v1, 0x0

    goto :goto_2

    :pswitch_2
    iput-boolean v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:Z

    return-void
.end method
