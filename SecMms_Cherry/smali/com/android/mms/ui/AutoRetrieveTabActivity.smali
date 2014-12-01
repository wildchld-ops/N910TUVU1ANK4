.class public Lcom/android/mms/ui/AutoRetrieveTabActivity;
.super Landroid/app/TabActivity;
.source "AutoRetrieveTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final NOTI_SIM1:Ljava/lang/String; = "NOTI_SIM1"

.field private static final NOTI_SIM2:Ljava/lang/String; = "NOTI_SIM2"

.field private static final TAG:Ljava/lang/String; = "AutoRetrieveTabActivity"

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mSimId:I

.field private tabAutoRetrieve:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    iput v0, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mSimId:I

    iput-boolean v0, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->tabAutoRetrieve:Z

    return-void
.end method

.method private setupSimTab(I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/mms/ui/AutoRetrievePreferenceActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "simSlot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, ""

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v1, "NOTI_SIM2"

    :goto_0
    sget-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {p0, p1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void

    :cond_0
    const-string v1, "NOTI_SIM1"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TabAutoRetrieve"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->tabAutoRetrieve:Z

    iget-boolean v2, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->tabAutoRetrieve:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/AutoRetrieveTabActivity;->setupSimTab(I)V

    invoke-direct {p0, v4}, Lcom/android/mms/ui/AutoRetrieveTabActivity;->setupSimTab(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->tabAutoRetrieve:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 9

    const v8, 0x1020016

    const v7, 0x1020006

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    iget-boolean v2, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->tabAutoRetrieve:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v4, v6, v4}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v5, v6, v4}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NOTI_SIM2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mSimId:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "NOTI_SIM2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/AutoRetrieveTabActivity;->mSimId:I

    goto :goto_0

    :cond_1
    const-string v0, "AutoRetrieveTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged() : TabId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
