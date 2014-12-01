.class public Lcom/android/launcher2/MenuEditBar;
.super Landroid/widget/LinearLayout;
.source "MenuEditBar.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuEditBar$6;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuEditBar"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAppInfo:Landroid/widget/TextView;

.field private mAppInfoContainer:Landroid/widget/FrameLayout;

.field private mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDelete:Landroid/widget/TextView;

.field private mDeleteContainer:Landroid/widget/FrameLayout;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteText:Ljava/lang/String;

.field private mDiableDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisable:Landroid/widget/TextView;

.field private mDisableContainer:Landroid/widget/FrameLayout;

.field private mHideAnimator:Landroid/animation/Animator;

.field private mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mNewFolder:Landroid/widget/TextView;

.field private mNewFolderContainer:Landroid/widget/FrameLayout;

.field private mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewPage:Landroid/widget/TextView;

.field private mNewPageAllowed:Z

.field private mNewPageContainer:Landroid/widget/FrameLayout;

.field private mNewPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mRes:Landroid/content/res/Resources;

.field private mShowAnimator:Landroid/animation/Animator;

.field private mUninstallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0f00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    return-void
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    :pswitch_2
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0086

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10800000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    :pswitch_5
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_2

    :cond_0
    move v3, v8

    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    :pswitch_2
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    move v11, v8

    :goto_2
    if-eqz v11, :cond_5

    new-instance v0, Lcom/android/launcher2/MenuEditBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuEditBar$1;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6457

    invoke-virtual {p0, v0, v8}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_1

    :cond_4
    move v11, v4

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBar;->showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_3

    :pswitch_3
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0089

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5695

    invoke-virtual {p0, v0, v8}, Landroid/view/View;->performHapticFeedback(II)Z

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    :pswitch_5
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private disableApp(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_2

    :cond_0
    move v3, v8

    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    :pswitch_2
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    move v11, v8

    :goto_2
    if-eqz v11, :cond_4

    new-instance v0, Lcom/android/launcher2/MenuEditBar$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuEditBar$2;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    move v11, v4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBar;->showDisableConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_1

    :pswitch_3
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0089

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    :pswitch_5
    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private hide()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->hideEditBar(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method private newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 19

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    :pswitch_2
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iput-boolean v1, v0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_2

    const/16 v16, 0x1

    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    if-eqz v16, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getSavedScreen()I

    move-result v13

    :goto_3
    if-eqz v16, :cond_4

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getSavedCell()I

    move-result v14

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPrevFolderOnCreateFolder(Lcom/android/launcher2/Folder;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getContainerType()J

    move-result-wide v7

    const-wide/16 v9, -0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v14}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6457

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    goto/16 :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    move/from16 v13, v18

    goto :goto_3

    :cond_4
    move v14, v15

    goto :goto_4

    :pswitch_3
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f0087

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5695

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_5
    :goto_5
    :pswitch_5
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    :cond_6
    sget-object v1, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p1, v7}, Lcom/android/launcher2/MenuAppModel;->editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V

    new-instance v0, Lcom/android/launcher2/MenuEditBar$3;

    invoke-direct {v0, p0, v6, p1}, Lcom/android/launcher2/MenuEditBar$3;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuView;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6457

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0088

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5695

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 5

    iget v3, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v3, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f050016

    const v2, 0x7f050017

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$4;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$4;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$5;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$5;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const v1, 0x7f05000e

    const v2, 0x7f05000f

    goto :goto_0

    :pswitch_2
    const v1, 0x7f050014

    const v2, 0x7f050015

    goto :goto_0

    :pswitch_3
    const/high16 v1, 0x7f050000

    const v2, 0x7f050001

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    aput-object p2, p3, p4

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V
    .locals 0

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 3

    sget-object v0, Lcom/android/launcher2/MenuEditBar$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDisableConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/MenuEditBar$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const v6, 0x7f10000c

    const v5, 0x7f10000e

    const v4, 0x7f10000d

    const v3, 0x7f10001a

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    :goto_0
    instance-of v7, v5, Lcom/android/launcher2/DragState;

    if-eqz v7, :cond_3

    move-object v3, v5

    check-cast v3, Lcom/android/launcher2/DragState;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    instance-of v7, v1, Lcom/android/launcher2/AppItem;

    if-eqz v7, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_5

    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    :cond_0
    :goto_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    sget-object v7, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->hide()V

    :cond_2
    const/4 v7, 0x5

    if-ne v0, v7, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    :cond_3
    return v6

    :cond_4
    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_6

    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_7

    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_8

    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_0

    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->disableApp(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/AppInfoDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppInfoDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_1

    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_2

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/launcher2/NewFolderDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_3

    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/launcher2/NewPageDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_5

    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    return-void
.end method

.method public show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;ZZZZZ)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean p5, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_7

    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz p6, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-nez p4, :cond_9

    move v3, v7

    :goto_2
    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_a

    move v0, v6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_b

    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-eqz p5, :cond_c

    move v0, v4

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p4

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-nez p4, :cond_d

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_d

    move v0, v6

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_4

    if-nez p7, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :cond_7
    move v0, v6

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move v3, v4

    goto :goto_2

    :cond_a
    move v0, v4

    goto :goto_3

    :cond_b
    move v0, v6

    goto :goto_4

    :cond_c
    move v0, v6

    goto :goto_5

    :cond_d
    move v0, v4

    goto :goto_6
.end method
