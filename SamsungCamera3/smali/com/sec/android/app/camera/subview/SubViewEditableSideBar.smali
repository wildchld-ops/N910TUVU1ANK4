.class public Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
.super Lcom/sec/android/app/camera/subview/SubViewBase;
.source "SubViewEditableSideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;
    }
.end annotation


# static fields
.field private static ANCHOR_HEIGHT:I = 0x0

.field private static ANCHOR_POS_X:I = 0x0

.field private static ANCHOR_POS_X_OFFSET:I = 0x0

.field private static ANCHOR_POS_Y:I = 0x0

.field private static ANCHOR_WIDTH:I = 0x0

.field private static final DEFAULT_FRONT_SHORTCUT_COMMANDID:[I

.field private static final DEFAULT_SHORTCUT_COMMANDID:[I

.field private static final EASYMODE_FRONT_SHORTCUT_COMMANDID:[I

.field private static final EASYMODE_FRONT_SHORTCUT_TITLEID:[I

.field private static final EASYMODE_SHORTCUT_COMMANDID:[I

.field private static final EASYMODE_SHORTCUT_TITLEID:[I

.field private static final KEY_CAMERA_SUBVIEW_SHORTCUT:[Ljava/lang/String;

.field private static LAUNCH_POS_X:I = 0x0

.field private static final MAX_SHORTCUT_COUNT:I = 0x2

.field private static final NO_COMMAND:I = 0x0

.field private static final SHORTCUTS_VIEW_ID:[I

.field private static final TAG:Ljava/lang/String; = "SubViewEditableSideBar"


# instance fields
.field private mAnchor:[Lcom/sec/android/glview/TwGLImage;

.field private mButtonVisibility:[I

.field private mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mShortcutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;",
            ">;"
        }
    .end annotation
.end field

.field mSubViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_subview_shortcut1_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_subview_shortcut2_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->KEY_CAMERA_SUBVIEW_SHORTCUT:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->DEFAULT_SHORTCUT_COMMANDID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->DEFAULT_FRONT_SHORTCUT_COMMANDID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_SHORTCUT_COMMANDID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_FRONT_SHORTCUT_COMMANDID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_SHORTCUT_TITLEID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_FRONT_SHORTCUT_TITLEID:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->SHORTCUTS_VIEW_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xc
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f0c0107
        0x7f0c00f5
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x7f0f0041
        0x7f0f0042
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mButtonVisibility:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initDimension()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initialize()V

    return-void

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mButtonVisibility:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initDimension()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initialize()V

    return-void

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;)[Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->LAUNCH_POS_X:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_X_OFFSET:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_Y:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_HEIGHT:I

    return v0
.end method

.method private addEditableShortcut(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getDefaultCommandId(I)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->DEFAULT_SHORTCUT_COMMANDID:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->DEFAULT_FRONT_SHORTCUT_COMMANDID:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_SHORTCUT_COMMANDID:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_FRONT_SHORTCUT_COMMANDID:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDimension()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a043c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_WIDTH:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a043d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_HEIGHT:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_X:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_Y:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_X_OFFSET:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->LAUNCH_POS_X:I

    return-void
.end method

.method private initShortcutList()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->addEditableShortcut(Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setShortcutView(ILandroid/widget/ImageView;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    if-nez p2, :cond_3

    iput-object p2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object p2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getSelectedCommandId(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setImageResourceByCmdId(Landroid/widget/ImageView;I)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->getDim(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    iget v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getSelectedCommandId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v3, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method private setShortcutView(ILandroid/widget/ImageView;Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    if-nez p2, :cond_3

    iput-object p2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object p2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getSelectedCommandId(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setImageResourceByCmdId(Landroid/widget/ImageView;I)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->getDim(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    iget v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getSelectedCommandId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v3, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method


# virtual methods
.method public checkDuplicateShortcut()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v3, v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v0, v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-ne v3, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onSaveShortcutPreferences()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->clear()V

    return-void
.end method

.method public dump()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    const-string v2, "SubViewEditableSideBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump commandId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", viewId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "SubViewEditableSideBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump commandId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", viewId:null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getIndexByView(Landroid/widget/ImageView;)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eq v3, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected getSelectedCommandId(I)I
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    const/16 v2, 0x8

    :goto_0
    const-string v3, "SubViewEditableSideBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "menuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " & modeid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = selectedCommandId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    goto :goto_0
.end method

.method public getTitleIdByIndex(I)I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_5

    const-string v2, "SubViewEditableSideBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBounds count= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "index= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    const/16 v3, 0x75

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_SHORTCUT_TITLEID:[I

    aget v1, v2, p1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->EASYMODE_FRONT_SHORTCUT_TITLEID:[I

    aget v1, v2, p1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    goto :goto_0
.end method

.method public getViewByCmdId(I)Landroid/widget/ImageView;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-ne v3, p1, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public handleDimButtons()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbFocused:Z

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    const/16 v4, 0x63

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "SubViewEditableSideBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDimButtons commandId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / dim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->getDim(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewBase;->getDim(I)Z

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isHelpMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    iget v4, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getSelectedCommandId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v1

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v4, v1, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_5
    iget v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->updateShortcutButton(I)V

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public handleDimButtons(Z)V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbFocused:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    const/16 v4, 0x63

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "SubViewEditableSideBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDimButtons commandId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / dim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->getDim(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    iget v4, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getSelectedCommandId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v1

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget v4, v1, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->handleDimButtons()V

    goto :goto_1
.end method

.method public hideSideBarForEditQuickSettings()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public indexOf(I)I
    .locals 5

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v4, v3, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-ne v4, p1, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public initAnchor()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    return-void
.end method

.method public initEditableShortcut()V
    .locals 5

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iput-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x75

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iput-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->loadDefaultCommandId()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initLayout()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initShortcutList()V

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initLayout()V

    goto :goto_1
.end method

.method public initLayout()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->initLayout()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->SHORTCUTS_VIEW_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->SHORTCUTS_VIEW_ID:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShown()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setShortcutView(ILandroid/widget/ImageView;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initShortcutList()V

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->loadDefaultCommandId()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initAnchor()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initLayout()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onLoadShortcutPreferences()V

    goto :goto_0
.end method

.method public loadDefaultCommandId()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->DEFAULT_SHORTCUT_COMMANDID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getDefaultCommandId(I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onHide()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    goto :goto_0
.end method

.method public onLoadShortcutPreferences()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->KEY_CAMERA_SUBVIEW_SHORTCUT:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getDefaultCommandId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setEditableShortcut(ILcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onRestoreLayoutStatus()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mButtonVisibility:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onSaveLayoutStatus()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mButtonVisibility:[I

    iget-object v3, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    aput v3, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onSaveShortcutPreferences()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->KEY_CAMERA_SUBVIEW_SHORTCUT:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onShow()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->checkDuplicateShortcut()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_5
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    goto :goto_0
.end method

.method public refreshShortcutMenu()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbFocused:Z

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setShortcutView(ILandroid/widget/ImageView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->handleDimButtons()V

    goto :goto_0
.end method

.method public removeItem()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v2, "SubViewEditableSideBar"

    const-string v3, "removeItem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resetEditableMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->loadDefaultCommandId()V

    return-void
.end method

.method public rotateLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onSaveLayoutStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->handleDimButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onRestoreLayoutStatus()V

    return-void
.end method

.method public rotateMenu()V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setAnchor(ILcom/sec/android/glview/TwGLImage;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mAnchor:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, p1

    sget v1, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_X:I

    sget v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_X_OFFSET:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->ANCHOR_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :cond_0
    return-void
.end method

.method public setEditableShortcut(II)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;

    iput p2, v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;->mCommandId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setEditableShortcut(ILcom/sec/android/app/camera/subview/SubViewEditableSideBar$ShortcutSet;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setImageResourceByCmdId(Landroid/widget/ImageView;I)V
    .locals 10

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    invoke-virtual {v5, p2}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "SubViewEditableSideBar"

    const-string v6, "setImageResourceByCmdId no resource"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "SubViewEditableSideBar"

    const-string v6, "mActivityContext or mActivityContext.getResources() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget v5, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mPress:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mPress:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    iget v5, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mNormal:I

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x101009e

    aput v7, v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mNormal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_5
    iget v5, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbLandscapeMode:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    :cond_7
    iget v5, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mTitle:I

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getIndexByView(Landroid/widget/ImageView;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getTitleIdByIndex(I)I

    move-result v4

    const-string v3, ""

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mTitle:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c0096

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x14c0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0xbac

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c009d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xf90

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0xbac

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00a4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xba0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0xba0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c009f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xcc0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x990

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00a1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xcc0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x72c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x800

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x480

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_e
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa00

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_f
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x780

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00b2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x780

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x438

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xf00

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x870

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_13
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00cf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0xa00

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_14
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x780

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x438

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_15
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00c7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x500

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x2d0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_16
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00cb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    iget-object v5, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c00d0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x280

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x1e0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_18
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    invoke-virtual {p1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public updateShortcutButton(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getViewByCmdId(I)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getViewByCmdId(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->getSelectedCommandId(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setImageResourceByCmdId(Landroid/widget/ImageView;I)V

    :cond_0
    return-void
.end method
