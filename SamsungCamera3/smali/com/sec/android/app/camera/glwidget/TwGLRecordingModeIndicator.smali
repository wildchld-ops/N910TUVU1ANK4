.class public Lcom/sec/android/app/camera/glwidget/TwGLRecordingModeIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLRecordingModeIndicator.java"


# static fields
.field public static final RECORDINGMODE_BOUNDARY:I = 0x4


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020409

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02040a

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020408

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020407

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setRecordingModeStatus(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-le p1, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
