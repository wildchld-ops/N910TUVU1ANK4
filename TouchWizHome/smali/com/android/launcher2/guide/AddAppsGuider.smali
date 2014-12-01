.class public Lcom/android/launcher2/guide/AddAppsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "AddAppsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddAppsGuider"

.field static isStep1DialogVisible:Z

.field static isStep2DialogVisible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field txtvw:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    sput-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    const-string v0, "AddAppsGuider"

    const-string v1, "AddAppsGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    const-string v0, "AddAppsGuider"

    const-string v1, "dismissHelpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step2()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    return-void
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 3

    const-string v1, "AddAppsGuider"

    const-string v2, "dismisshelpdialog step 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    :cond_0
    return-void
.end method

.method public dismissShowHelpDialog_step2()V
    .locals 4

    sget-boolean v2, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    if-eqz v2, :cond_0

    const-string v2, "AddAppsGuider"

    const-string v3, "dismisshelpdialog step 2. isStep2DialogVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public isStep1DialogVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissHelpDialog()V

    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step1()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step1()V

    return-void
.end method

.method public showHelpDialog_step1()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v1, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v3, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible:Z

    const-string v1, "AddAppsGuider"

    const-string v2, "showhelpdialog step 1+isStep1DialogVisible=true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_0
.end method

.method public showHelpDialog_step2()V
    .locals 7

    const/4 v5, 0x1

    const v6, 0x3dcccccd

    sget-boolean v3, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v5, Lcom/android/launcher2/guide/AddAppsGuider;->isStep2DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    sget-object v4, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddAppsGuider;->menuLayout:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>()V

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher2/guide/AddAppsGuider$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/guide/AddAppsGuider$1;-><init>(Lcom/android/launcher2/guide/AddAppsGuider;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/guide/AddAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0093

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "create_folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    const v4, 0x7f0f006f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v6, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
