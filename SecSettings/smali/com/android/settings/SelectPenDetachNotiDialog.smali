.class public Lcom/android/settings/SelectPenDetachNotiDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectPenDetachNotiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field private mCurrentNotiPos:I

.field mCurrentSelection:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

.field public mPenSoundList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPenSoundListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousNotiPos:I

.field private sfx:Landroid/media/Ringtone;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iput v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    return-void
.end method

.method private stopAnyPlaying()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "SelectPenDetachNotiDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick[OK] - position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / saved Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "sound_settings"

    const-string v3, "previousStage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/settings/SelectPenDetachNotiAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/settings/SelectPenDetachNotiAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    sget-object v3, Lcom/android/settings/SoundSettings;->mPenNotificationList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/SoundSettings;->mPenNotificationListValues:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090f2b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04008d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f0901ba

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    const v3, 0x7f0916b5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b01a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->getCurrentSelection()I

    move-result v3

    iput v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    iget v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const-string v3, "SelectPenDetachNotiDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() positoin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/settings/SelectPenDetachNotiAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/settings/SelectPenDetachNotiAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    sget-object v3, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lcom/android/settings/SelectPenDetachNotiAdapter;

    sget-object v4, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v7, v7, v4}, Lcom/android/settings/SelectPenDetachNotiAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mNotificationAdapter:Lcom/android/settings/SelectPenDetachNotiAdapter;

    sget-object v3, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_3
    const-string v3, "SelectPenDetachNotiDialog"

    const-string v4, "onCreate() positoin : -1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v9, 0x1

    const-string v6, "SelectPenDetachNotiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPenSoundListValues:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->stop()V

    :cond_0
    packed-switch p3, :pswitch_data_0

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "SelectPenDetachNotiDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewSound : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v6, v2

    const/high16 v7, 0x40e00000

    div-float/2addr v6, v7

    const v7, 0x3e99999a

    mul-float v3, v6, v7

    iget v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iget v7, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mCurrentNotiPos:I

    iput v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->mPreviousNotiPos:I

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    :cond_1
    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6, v9}, Landroid/media/Ringtone;->setStreamType(I)V

    iget-object v6, p0, Lcom/android/settings/SelectPenDetachNotiDialog;->sfx:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :cond_2
    const-string v6, "SelectPenDetachNotiDialog"

    const-string v7, "There is no Ringtone."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v6, "SelectPenDetachNotiDialog"

    const-string v7, "audioManager is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/SelectPenDetachNotiDialog;->stopAnyPlaying()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
