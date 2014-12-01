.class public Lcom/android/settings/NewModePreview;
.super Landroid/app/Activity;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NewModePreview$RadioAdapter;
    }
.end annotation


# static fields
.field private static mModeItem:[Ljava/lang/String;

.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/NewModePreview$RadioAdapter;

.field private mActionBar:Landroid/app/ActionBar;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tv.peel.smartremote"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NewModePreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040064

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    return-void
.end method


# virtual methods
.method public createGuideDialog()V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "adapt_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->showGuideDialog()V

    :cond_0
    return-void
.end method

.method public makeContentsString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    array-length v5, v7

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    :try_start_0
    sget-object v7, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v3

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-lez v1, :cond_0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u200f- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "ModePreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not found : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/NewModePreview;->mPackageName:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f04015e

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->setContentView(I)V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f091bb6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f091b9e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f091bb7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    sget-object v5, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f091bb8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const v5, 0x7f0b01a5

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings/NewModePreview$RadioAdapter;

    const v6, 0x7f040150

    sget-object v7, Lcom/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/android/settings/NewModePreview$RadioAdapter;-><init>(Lcom/android/settings/NewModePreview;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/NewModePreview;->adapter:Lcom/android/settings/NewModePreview$RadioAdapter;

    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/NewModePreview;->adapter:Lcom/android/settings/NewModePreview$RadioAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_mode_automatic_setting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v9, :cond_2

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setOverScrollMode(I)V

    const v5, 0x7f0b0296

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/NewModePreview$1;

    invoke-direct {v5, p0}, Lcom/android/settings/NewModePreview$1;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b0295

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/NewModePreview$2;

    invoke-direct {v5, p0}, Lcom/android/settings/NewModePreview$2;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f090d8a

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->setTitle(I)V

    const v5, 0x7f0b0294

    invoke-virtual {p0, v5}, Lcom/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/settings/NewModePreview;->configureActionBar()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_mode_setting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/NewModePreview;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/NewModePreview$4;

    invoke-direct {v2, p0}, Lcom/android/settings/NewModePreview$4;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/NewModePreview;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/NewModePreview$5;

    invoke-direct {v2, p0}, Lcom/android/settings/NewModePreview$5;-><init>(Lcom/android/settings/NewModePreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->createGuideDialog()V

    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    :goto_0
    const-string v1, "ModePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setmDNIeUserMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    :goto_1
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    iget-object v4, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b013b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    goto :goto_0
.end method

.method public showGuideDialog()V
    .locals 11

    const/4 v8, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/NewModePreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f0401ae

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0b043a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f091bb6

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f091bba

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/NewModePreview;->makeContentsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/NewModePreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0b0195

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/NewModePreview$3;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/settings/NewModePreview$3;-><init>(Lcom/android/settings/NewModePreview;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/settings/NewModePreview;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
