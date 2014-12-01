.class public Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLinkAppDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;,
        Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private ainfo:Landroid/content/pm/ApplicationInfo;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appSnippet:Landroid/view/View;

.field private icon:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private final lock:Ljava/lang/Object;

.field private mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

.field private mCertificateLocale:Landroid/widget/TextView;

.field private mCertificateSigningEntity:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mMenuVerifyCertificate:Landroid/view/MenuItem;

.field private mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

.field private mResult:Z

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mTextViewValidDate:Landroid/widget/TextView;

.field private mTextViewValidDateTitle:Landroid/widget/TextView;

.field private mTextViewValidDateUnderLine:Landroid/view/View;

.field private mThread:Ljava/lang/Thread;

.field private mValidCheck:Landroid/widget/TextView;

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->updateAppInfo(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    return p1
.end method

.method private doUnBindFromService()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MirrorLinkAppDetail: doUnbindFromService"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateAppInfo(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    .locals 6

    const v5, -0x777778

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorLinkAppDetail :updateAppInfo mAppInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorLinkAppDetail :updateAppInfo mAppInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "VALID"

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f091b53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateSigningEntity:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateLocale:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v0, "UNCHECKED"

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f091b55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v0, "NONCERTIFIED"

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f091b54

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mId:I

    new-instance v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;-><init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "entity_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "non_restricted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "restricted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "vaild_date"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;

    invoke-direct {v1, p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;-><init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const v0, 0x7f091b4e

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04014d

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0b0080

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v3, v3, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v3, v3, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->ainfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0b0081

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->label:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->ainfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0b031a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v3, 0x7f0b033a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    const v3, 0x7f0b033b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    const v3, 0x7f0b033c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    const v3, 0x7f0b0337

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateSigningEntity:Landroid/widget/TextView;

    const v3, 0x7f0b0339

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateLocale:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    invoke-direct {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->updateAppInfo(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "MirrorLinkAppDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application icon not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLinkAppDetail: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->doUnBindFromService()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MirrorLinkAppDetail"

    const-string v1, "Manual Revocation excuted: disabling the button now"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLinkAppDetail Manual Revocation excuted: disabling the button now"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->doUnBindFromService()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MirrorLinkAppDetail : Binding to Tms"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.MIRRORLINK_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public run()V
    .locals 6

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetailfrom runnable thread"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v5, v5, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->performRevocationCheck(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetail: InterruptedException !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$2;

    invoke-direct {v4, p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$2;-><init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetail: RemoteException thrown !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetail: Exception thrown !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
