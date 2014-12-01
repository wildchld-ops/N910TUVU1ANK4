.class public Lcom/android/phone/AllowDataAccess;
.super Landroid/app/ListActivity;
.source "AllowDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;,
        Lcom/android/phone/AllowDataAccess$RoamAdapter;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private mCurrentMode:I

.field private mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AllowDataAccess;)I
    .locals 1
    .param p0    # Lcom/android/phone/AllowDataAccess;

    iget v0, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    return v0
.end method

.method private fillArrays()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v4, v3

    div-int/lit8 v2, v4, 0x2

    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/phone/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/phone/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/AllowDataAccess;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/android/phone/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMode()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming_onetime"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v6, :cond_0

    if-ne v0, v6, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "AllowDataAccess"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->setRequestedOrientation(I)V

    :cond_0
    const v4, 0x7f040006

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090702

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/AllowDataAccess;->fillArrays()V

    invoke-direct {p0}, Lcom/android/phone/AllowDataAccess;->getMode()I

    move-result v4

    iput v4, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const v4, 0x7f040046

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v4, 0x7f040044

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v4, Lcom/android/phone/AllowDataAccess$RoamAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/phone/AllowDataAccess$RoamAdapter;-><init>(Lcom/android/phone/AllowDataAccess;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    const v4, 0x7f0a001b

    invoke-virtual {p0, v4}, Lcom/android/phone/AllowDataAccess;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/AllowDataAccess$1;

    invoke-direct {v4, p0}, Lcom/android/phone/AllowDataAccess$1;-><init>(Lcom/android/phone/AllowDataAccess;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-direct {v4, p0}, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;-><init>(Lcom/android/phone/AllowDataAccess;)V

    iput-object v4, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "data_roaming_onetime"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "data_roam_access_notify"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const-string v0, "AllowDataAccess"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AllowDataAccess;->mRoamSettingsObserver:Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lez p3, :cond_1

    const/4 v2, 0x3

    if-ge p3, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/AllowDataAccess;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v3, p3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "AllowDataAccess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick(): position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentMode:value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_roam_access_notify"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v2, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    if-eq v2, v1, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v2, "data_roaming"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideAllowDataAccess()V

    invoke-virtual {p0}, Lcom/android/phone/AllowDataAccess;->finish()V

    :cond_1
    return-void

    :pswitch_0
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    const-string v2, "data_roaming"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "data_roaming_onetime"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v0, "AllowDataAccess"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/AllowDataAccess;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/phone/AllowDataAccess;->mCurrentMode:I

    return-void
.end method
