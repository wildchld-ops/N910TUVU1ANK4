.class public Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
.super Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.source "TwGLEditableSideBarDragDropBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;
    }
.end annotation


# static fields
.field private static final BG_POS_X:I

.field private static final BG_POS_Y:I

.field private static final RELOCATEITEM_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "TwGLEditableSideBarDragDropBox"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mFocusBG:Lcom/sec/android/glview/TwGLImage;

.field private mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

.field private mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mNormalBG:Lcom/sec/android/glview/TwGLImage;

.field private mOnSideBarBoxCancelListener:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;

.field private mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mRelocating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0189

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_X:I

    const v0, 0x7f0a018a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mRelocating:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202f5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202f7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FF)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mRelocating:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202f5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202f7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mRelocating:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNext(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202f5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202f7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mRelocating:Z

    return p1
.end method

.method private relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;Lcom/sec/android/glview/TwGLView;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutX()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutX()F

    move-result v4

    sub-float v1, v3, v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutY()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutY()F

    move-result v4

    sub-float v2, v3, v4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mRelocating:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    invoke-virtual {p2, v3}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    return-void
.end method


# virtual methods
.method public addToFirst(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addToFirst(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->shiftRight()Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public addToLast(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addToLast(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->shiftLeft()Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 3

    const/4 v2, 0x1

    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method protected cancelDrag()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mOnSideBarBoxCancelListener:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mOnSideBarBoxCancelListener:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;->onSideBarBoxCancelListener(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayoutX()F
    .locals 2

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getLayoutY()F
    .locals 2

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getNext()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    return-object v0
.end method

.method public getPrevious()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    return-object v0
.end method

.method public moveEmptyToLast()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->shiftLeft()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->moveEmptyToLast()V

    :cond_1
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDragStart(Lcom/sec/android/glview/TwGLView;FF)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 6

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x63

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setFocusBGVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/MenuDimController;->getDim(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-eq v1, v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getContentType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    instance-of v1, p2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-nez v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->indexOfSideBarItem(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c021b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->removeSideBarEmptyItem()V

    :cond_1
    :goto_0
    check-cast p1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    :goto_1
    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_1
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setFocusBGVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mRelocating:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->shiftLeft()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->shiftRight()Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setFocusBGVisibility(I)V

    goto :goto_0
.end method

.method public setFocusBGVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mFocusBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setNext(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    return-void
.end method

.method public setNormalBGVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOnSideBarBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mOnSideBarBoxCancelListener:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;

    return-void
.end method

.method public setPrevious(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    return-void
.end method

.method public shiftLeft()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->shiftLeft()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public shiftRight()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->shiftRight()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
