.class public Lcom/android/launcher2/guide/AddWidgetsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "AddWidgetsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddWidgetsGuider"

.field public static isAddWidgetsGuiderOn:Z

.field static isStep1DialogVisible:Z

.field static isStep2DialogVisible:Z

.field static isStep3DialogVisible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    const-string v0, "AddWidgetsGuider"

    const-string v1, "AddWidgetsGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    const-string v0, "AddWidgetsGuider"

    const-string v1, "AddWidgetsGuider.dismissHelpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_firstStep()V

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step1()V

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step3()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isAddWidgetsGuiderOn:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    return-void
.end method

.method public dismissShowHelpDialog_firstStep()V
    .locals 5

    sget-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    goto :goto_0
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

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
    .locals 5

    sget-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "AddWidgetsGuider"

    const-string v4, " frag!=null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "AddWidgetsGuider - dismissShowHelpDialog_step2"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    const-string v3, "AddWidgetsGuider"

    const-string v4, "layout==null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    sget-object v3, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_3
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    goto :goto_0
.end method

.method public dismissShowHelpDialog_step3()V
    .locals 4

    sget-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "AddWidgetsGuider"

    const-string v3, " frag!=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    const-string v2, "AddWidgetsGuider"

    const-string v3, "layout==null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

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

    sget-boolean v0, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_first_step()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step1()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step3()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

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
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

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

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_first_step()V

    return-void
.end method

.method public showHelpDialog_first_step()V
    .locals 9

    const/4 v8, 0x1

    sget-boolean v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v8, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep1DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f03000f

    sget-object v7, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    sput v8, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f09001e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f09003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f09001d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/android/launcher2/guide/AddWidgetsGuider$1;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/guide/AddWidgetsGuider$1;-><init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f007f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    const v6, 0x3f19999a

    const v7, 0x3dcccccd

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog_step1()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    sput v1, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v2, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

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
    .locals 8

    const/4 v7, 0x1

    sget-boolean v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x2

    sput v5, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v7, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep2DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step1()V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "AddWidgetsGuider"

    const-string v6, " frag!=null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f030019

    sget-object v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f09003e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v5, p0, Lcom/android/launcher2/guide/AddWidgetsGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v0, v2, v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/android/launcher2/guide/AddWidgetsGuider$2;

    invoke-direct {v5, p0, v3}, Lcom/android/launcher2/guide/AddWidgetsGuider$2;-><init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    const v5, 0x3f19999a

    const v6, 0x3dcccccd

    invoke-virtual {v0, v5, v6, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog_step3()V
    .locals 7

    const/4 v6, 0x1

    sget-boolean v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x3

    sput v4, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v6, Lcom/android/launcher2/guide/AddWidgetsGuider;->isStep3DialogVisible:Z

    const-string v4, "AddWidgetsGuider"

    const-string v5, "showhelpdialog step 3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "AddWidgetsGuider"

    const-string v5, " frag!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    sget-object v5, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    invoke-direct {v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>()V

    sget-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->menuLayout:Landroid/view/View;

    const v5, 0x7f09001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher2/guide/AddWidgetsGuider$3;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/guide/AddWidgetsGuider$3;-><init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lcom/android/launcher2/guide/AddWidgetsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v4, 0x3f19999a

    const v5, 0x3dcccccd

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto :goto_0
.end method
