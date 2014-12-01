.class public Lcom/android/mms/ui/CbSettingTabActivity;
.super Landroid/app/TabActivity;
.source "CbSettingTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final CB_SIM1:Ljava/lang/String; = "CB_SIM1"

.field private static final CB_SIM2:Ljava/lang/String; = "CB_SIM2"

.field private static final TAG:Ljava/lang/String; = "CbSettingTabActivity"

.field private static final mInsertedSimNum:I

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mActivePhone:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/CbSettingTabActivity;->mInsertedSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/CbSettingTabActivity;->mActivePhone:I

    return-void
.end method

.method private setupSimTab(I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "simSlot"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/CbSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/mms/ui/CbSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

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
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/CbSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/android/mms/ui/CbSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/mms/ui/CbSettingTabActivity;->mInsertedSimNum:I

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CbSettingTabActivity;->setupSimTab(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/mms/ui/CbSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/android/mms/ui/CbSettingTabActivity;->mActivePhone:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

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
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    sget v5, Lcom/android/mms/ui/CbSettingTabActivity;->mInsertedSimNum:I

    if-le v5, v6, :cond_1

    invoke-static {p0, v7}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v6}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 v4, 0x0

    :goto_0
    sget v5, Lcom/android/mms/ui/CbSettingTabActivity;->mInsertedSimNum:I

    if-ge v4, v5, :cond_2

    sget-object v5, Lcom/android/mms/ui/CbSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {p0, v4, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v5, Lcom/android/mms/ui/CbSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/mms/ui/CbSettingTabActivity;->mInsertedSimNum:I

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/android/mms/ui/CbSettingTabActivity;->mActivePhone:I

    const-string v2, "CbSettingTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTabChanged() : TabId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
