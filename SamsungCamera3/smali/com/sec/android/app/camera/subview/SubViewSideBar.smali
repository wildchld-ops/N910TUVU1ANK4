.class public Lcom/sec/android/app/camera/subview/SubViewSideBar;
.super Lcom/sec/android/app/camera/subview/SubViewBase;
.source "SubViewSideBar.java"


# static fields
.field private static final SETTINGS_BUTTON:I = 0x0

.field private static final SWITCH_BUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SubViewSideBar"

.field private static mButtonVisibility:[I


# instance fields
.field private mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

.field private mSettingsButton:Landroid/widget/ImageView;

.field mSubViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mSwitchButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mButtonVisibility:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewSideBar;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initialize()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewSideBar;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initialize()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->clear()V

    return-void
.end method

.method public getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    return-object v0
.end method

.method public handleDimButtons()V
    .locals 7

    const/16 v6, 0x24

    const/16 v5, 0x1b

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "SubViewSideBar"

    const-string v2, "handleDimButtons"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbFocused:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/subview/SubViewBase;->getDim(I)Z

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    iget v2, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/subview/SubViewBase;->getDim(I)Z

    move-result v1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    iget v2, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->handleDimButtons()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    iget v2, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mNormal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    iget v2, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mNormal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_2
.end method

.method public handleDimButtons(Z)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbFocused:Z

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v1, "SubViewSideBar"

    const-string v2, "mSettingsButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    iget v2, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const-string v1, "SubViewSideBar"

    const-string v2, "mSwitchButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    iget v2, v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;->mDim:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->handleDimButtons(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->handleDimButtons()V

    goto :goto_0
.end method

.method public hideSideBar()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onHide()V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public hideSideBarForEditQuickSettings()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->hideSideBarForEditQuickSettings()V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public initEditableShortcut()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->initEditableShortcut()V

    :cond_0
    return-void
.end method

.method public initLayout()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setImageResourceByCmdId(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setImageResourceByCmdId(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSubViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    return-void
.end method

.method public initialize()V
    .locals 2

    const-string v0, "SubViewSideBar"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initLayout()V

    return-void
.end method

.method public onHide()V
    .locals 2

    const-string v0, "SubViewSideBar"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->hideSideBar()V

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public onRestoreLayoutStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mButtonVisibility:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mButtonVisibility:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onSaveLayoutStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mButtonVisibility:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mButtonVisibility:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 2

    const-string v0, "SubViewSideBar"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->showSideBar()V

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public refreshShortcutMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->refreshShortcutMenu()V

    :cond_0
    return-void
.end method

.method public rotateLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onSaveLayoutStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->rotateLayout()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->handleDimButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onRestoreLayoutStatus()V

    return-void
.end method

.method public rotateMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setFixedOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setLastOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->rotateMenu()V

    :cond_0
    return-void
.end method

.method public showSideBar()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->refreshShortcutMenu()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onShow()V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public showSideBarForEditQuickSettings()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mSwitchButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewSideBar;->mEditableSideBar:Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onShow()V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method
