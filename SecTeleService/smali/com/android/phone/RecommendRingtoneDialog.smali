.class public Lcom/android/phone/RecommendRingtoneDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
    }
.end annotation


# instance fields
.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

.field private mSelectedPosition:I

.field private mSimIndex:I

.field private offset:I

.field private ringtone:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    new-instance v0, Lcom/android/phone/RecommendRingtoneDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/RecommendRingtoneDialog$2;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/RecommendRingtoneDialog;I)I
    .locals 0
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/RecommendRingtoneDialog;)Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;
    .param p1    # Landroid/media/Ringtone;

    iput-object p1, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/RecommendRingtoneDialog;)V
    .locals 0
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    invoke-direct {p0}, Lcom/android/phone/RecommendRingtoneDialog;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/AudioManager;
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/phone/RecommendRingtoneDialog;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private requestAudioFocus()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecommendRingtoneDialog"

    const-string v1, "requestAudioFocus fail. it may be during call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time_2"

    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recommendation_time"

    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/phone/RecommendRingtoneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recommend_offset"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simIndex"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simIndex"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    :cond_0
    iput-object p0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/RecommendRingtoneDialog$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RecommendRingtoneDialog$1;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    invoke-direct {v1, p0}, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
