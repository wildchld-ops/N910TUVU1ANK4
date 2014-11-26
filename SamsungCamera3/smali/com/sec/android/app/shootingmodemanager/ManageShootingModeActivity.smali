.class public Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;
.super Landroid/app/Activity;
.source "ManageShootingModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SHOOTING_MODES_CHANGED:Ljava/lang/String; = "com.samsung.android.action.SHOOTING_MODES_CHANGED"

.field private static final CONTENT_LOADER_FRAGMENT_TAG:Ljava/lang/String; = "LoaderFragment"

.field private static final REQUEST_SAMSUNG_APPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ManageShootingModeActivity"

.field private static enableDoneButton:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

.field private mHelpToast:Landroid/widget/Toast;

.field private mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mHelpToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->saveOrder()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    .locals 1
    .param p0    # Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    return-object v0
.end method

.method private static booleanToInt(Z)I
    .locals 1
    .param p0    # Z

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initLayout(Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    const v1, 0x7f0f0001

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$1;-><init>(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$2;-><init>(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    iput-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    new-instance v0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->setOwner(Lcom/sec/android/app/shootingmodemanager/ItemsLoader$ItemsLoaderOwner;)V

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-boolean v1, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->enableDoneButton:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->setEnableItems()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->setDisableItems()V

    goto :goto_0
.end method

.method private saveOrder()V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v9, "LoaderFragment"

    invoke-virtual {v3, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    iget-object v9, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v9}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->getItemsAdapter()Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getCount()I

    move-result v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v8, :cond_1

    invoke-virtual {v0, v4}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getItemInfo(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;->getBaseUri()Landroid/net/Uri;

    move-result-object v9

    iget v10, v5, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->mId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v9, "sm_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "deleted"

    invoke-virtual {v5}, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->isVisible()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->booleanToInt(Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "com.samsung.android.provider.shootingmodeprovider"

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v2

    const-string v9, "ManageShootingModeActivity"

    const-string v10, "Failed to save order"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v9, "ManageShootingModeActivity"

    const-string v10, "Failed to save order"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->saveOrder()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->onDestroy()V

    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "LoaderFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-direct {p0, v0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->initLayout(Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->enableDoneButton:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "LoaderFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;

    invoke-direct {v1}, Lcom/sec/android/app/shootingmodemanager/ItemsLoader;-><init>()V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "LoaderFragment"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->initLayout(Lcom/sec/android/app/shootingmodemanager/ItemsLoader;)V

    new-instance v2, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    invoke-direct {v2, p0}, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;-><init>(Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.action.SHOOTING_MODES_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->refreshView()V

    const v2, 0x7f0c0297

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mHelpToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mHelpToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mPackageChangeReceiver:Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity$PackageChangeReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->mHelpToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public setDisableItems()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->enableDoneButton:Z

    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setEnableItems()V
    .locals 2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/shootingmodemanager/ManageShootingModeActivity;->enableDoneButton:Z

    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
