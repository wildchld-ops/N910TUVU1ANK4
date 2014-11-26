.class public Lcom/android/phone/DriveLinkDialogActivity;
.super Landroid/app/Activity;
.source "DriveLinkDialogActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

.field private mDismissButton:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field private mIsNumberSaved:Z

.field private mIsPrivate:Z

.field private mName:Ljava/lang/String;

.field private mPreviousLocale:Ljava/util/Locale;

.field private mRejectMsg:Ljava/lang/String;

.field private mRejectMsgView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/DriveLinkDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsNumberSaved:Z

    iput-boolean v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    new-instance v0, Lcom/android/phone/DriveLinkDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/DriveLinkDialogActivity$2;-><init>(Lcom/android/phone/DriveLinkDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DriveLinkDialogActivity;)Z
    .locals 1
    .param p0    # Lcom/android/phone/DriveLinkDialogActivity;

    iget-boolean v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/DriveLinkDialogActivity;)Z
    .locals 1
    .param p0    # Lcom/android/phone/DriveLinkDialogActivity;

    iget-boolean v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsNumberSaved:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/DriveLinkDialogActivity;

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/util/Locale;
    .locals 1
    .param p0    # Lcom/android/phone/DriveLinkDialogActivity;

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/DriveLinkDialogActivity;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0    # Lcom/android/phone/DriveLinkDialogActivity;
    .param p1    # Ljava/util/Locale;

    iput-object p1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    return-object p1
.end method

.method public static getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x23

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_2

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private playNotiSoundAndReadOutRejectMsg()V
    .locals 7

    const v6, 0x7f090a2e

    const/16 v5, 0x65

    const/16 v4, 0x64

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    :goto_0
    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090a2d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/phone/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v2, 0x7f04002a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f0a00bb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/phone/DriveLinkDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/DriveLinkDialogActivity$1;-><init>(Lcom/android/phone/DriveLinkDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v2, 0x7f0a00ba

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "private_num"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z

    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "number_saved_extra"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsNumberSaved:Z

    invoke-direct {p0}, Lcom/android/phone/DriveLinkDialogActivity;->playNotiSoundAndReadOutRejectMsg()V

    return-void

    :cond_0
    const v2, 0x7f040029

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "name_number_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "private_num"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number_saved_extra"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsNumberSaved:Z

    invoke-direct {p0}, Lcom/android/phone/DriveLinkDialogActivity;->playNotiSoundAndReadOutRejectMsg()V

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z

    const-string v0, "name_number_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DriveLinkDialogActivity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
