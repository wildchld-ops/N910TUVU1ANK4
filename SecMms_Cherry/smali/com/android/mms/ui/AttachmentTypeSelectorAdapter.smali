.class public Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # I

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getData(Landroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;ZI)Ljava/util/List;
    .locals 10
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const v5, 0x7f0200e5

    const/4 v9, 0x5

    const/4 v3, 0x1

    const v4, 0x7f0c00a9

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p1, :cond_10

    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.cooliris.media"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.app.camera"

    const/4 v1, 0x3

    const v4, 0x7f0c00aa

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_1
    const-string v1, "com.sec.android.gallery3d"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v1, "com.cooliris.media"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v1, "com.android.gallery3d"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    const v4, 0x7f0c00ac

    const v5, 0x7f0200e3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    const v4, 0x7f0c00ad

    const v5, 0x7f0200e4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v1, "com.sec.android.app.voicenote"

    const v4, 0x7f0c00ae

    const v5, 0x7f020394

    move-object v0, p0

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.android.calendar"

    const/4 v1, 0x7

    const v3, 0x7f0c0122

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v1, "com.samsung.android.app.memo"

    const/16 v3, 0x8

    const v4, 0x7f0c0123

    const v5, 0x7f020167

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v1, 0xb

    const v3, 0x7f0c019b

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.sec.android.app.snotebook"

    const/16 v1, 0xd

    const v3, 0x7f0c019c

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.samsung.android.snote"

    const/16 v1, 0xd

    const v3, 0x7f0c019c

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    const-string v0, "com.android.calendar"

    const/4 v1, 0x7

    if-eqz v8, :cond_f

    :goto_1
    invoke-static {p0, v0, v2, v1, v8}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.android.task"

    const/16 v1, 0x9

    const v3, 0x7f0c016f

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "com.google.android.apps.maps"

    const/16 v1, 0xa

    const v3, 0x7f0c0170

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAMapLocation()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "AMAP"

    const/16 v1, 0xa

    const v3, 0x7f0c0170

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "com.android.contacts"

    const/4 v1, 0x6

    const v3, 0x7f0c0121

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_e
    :goto_2
    return-object v2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_f
    const v3, 0x7f0c0198

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_10
    const/16 v0, 0xa

    if-eq p2, v0, :cond_11

    const/16 v0, 0xb

    if-ne p2, v0, :cond_13

    :cond_11
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.cooliris.media"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.android.gallery3d"

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_12
    const-string v0, "com.sec.android.app.camera"

    const/4 v1, 0x3

    const v4, 0x7f0c00aa

    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    const-string v1, "com.sec.android.app.myfiles"

    const v4, 0x7f0c00ab

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    const-string v1, "com.sec.android.app.camera"

    const/4 v3, 0x4

    const v4, 0x7f0c00ac

    const v5, 0x7f0200e3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_2

    :cond_13
    const/16 v0, 0xc

    if-ne p2, v0, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v1, "com.sec.android.app.myfiles"

    const/4 v3, 0x2

    const v4, 0x7f0c00ad

    const v5, 0x7f0200e4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0c00ae

    invoke-static {p0, v0, v2, v9, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v1, "com.sec.android.app.voicenote"

    const v4, 0x7f0c00ae

    const v5, 0x7f020394

    move-object v0, p0

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_2
.end method
