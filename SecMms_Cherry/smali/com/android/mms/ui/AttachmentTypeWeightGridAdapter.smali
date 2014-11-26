.class public Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;
.super Lcom/android/mms/ui/IconWeightListAdapter;
.source "AttachmentTypeWeightGridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    const v0, 0x7f04005d

    const/16 v1, 0xd

    invoke-static {p1, v2, v1, v2}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(Landroid/content/Context;ZIZ)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # I

    const v0, 0x7f04005d

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(Landroid/content/Context;ZIZ)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # I
    .param p4    # Z

    const v0, 0x7f04005d

    invoke-static {p1, p2, p3, p4}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(Landroid/content/Context;ZIZ)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;ZIZ)Ljava/util/List;
    .locals 17
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # I
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v5, 0x0

    if-nez p1, :cond_12

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddimage()J

    move-result-wide v5

    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    const v8, 0x7f020173

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.cooliris.media"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    const v8, 0x7f020173

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    const v8, 0x7f020173

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getTakepicture()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x3

    const v7, 0x7f0c00aa

    const v8, 0x7f02016e

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvideo()J

    move-result-wide v5

    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020176

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "com.cooliris.media"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020176

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020176

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordvideo()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x4

    const v7, 0x7f0c00ac

    const v8, 0x7f02016f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsound()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x2

    const v7, 0x7f0c00ad

    const v8, 0x7f02016c

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getRecordsound()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.voicerecorder"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    const v8, 0x7f020174

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v2, "com.sec.android.app.voicenote"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    const v8, 0x7f020174

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v5

    const-string v2, "com.android.calendar"

    const/4 v4, 0x7

    const v7, 0x7f0c0122

    const v8, 0x7f020175

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvnote()J

    move-result-wide v5

    const-string v2, "com.samsung.android.app.memo"

    const/16 v4, 0x8

    const v7, 0x7f0c0123

    const v8, 0x7f020172

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsmemo()J

    move-result-wide v5

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v4, 0xb

    const v7, 0x7f0c0123

    const v8, 0x7f020172

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddsnote()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.snotebook"

    const/16 v4, 0xd

    const v7, 0x7f0c019c

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v16, -0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.snote"

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v16, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v1, 0x1

    move/from16 v0, v16

    if-le v0, v1, :cond_9

    const-string v2, "com.samsung.android.snote"

    const/16 v4, 0xd

    const v7, 0x7f0c019c

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScrapbook()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddScrapbook()J

    move-result-wide v5

    const-string v2, "com.samsung.android.app.pinboard"

    const/16 v4, 0x16

    const v7, 0x7f0c04a9

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcal()J

    move-result-wide v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.calendar"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    :goto_1
    const-string v2, "com.android.calendar"

    const/4 v4, 0x7

    if-eqz v15, :cond_11

    move-object v7, v15

    :goto_2
    const v8, 0x7f020175

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)Z

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvtodo()J

    move-result-wide v5

    const-string v2, "com.android.task"

    const/16 v4, 0x9

    const v7, 0x7f0c016f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v5

    const-string v2, "com.google.android.apps.maps"

    const/16 v4, 0xa

    const v7, 0x7f0c0170

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAMapLocation()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddLocation()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const v1, 0x7f0c0170

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xa

    move-object v7, v3

    move-wide v11, v5

    invoke-static/range {v7 .. v12}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddvcard()J

    move-result-wide v5

    const-string v2, "com.android.contacts"

    const/4 v4, 0x6

    const v7, 0x7f0c0121

    const v8, 0x7f020170

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p3, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    invoke-static {}, Lcom/android/mms/ui/IconWeightListAdapter;->getAddMyFiles()J

    move-result-wide v5

    const-string v2, "com.sec.android.app.myfiles"

    const/16 v4, 0x17

    const v7, 0x7f0c0578

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJI)Z

    :cond_10
    :goto_3
    sget-object v1, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->sComparator:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_11
    const v1, 0x7f0c0198

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_12
    const/16 v1, 0xa

    move/from16 v0, p2

    if-eq v0, v1, :cond_13

    const/16 v1, 0xb

    move/from16 v0, p2

    if-ne v0, v1, :cond_15

    :cond_13
    const-string v2, "com.sec.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    const v8, 0x7f020173

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v2, "com.cooliris.media"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    const v8, 0x7f020173

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v2, "com.android.gallery3d"

    const/4 v4, 0x0

    const v7, 0x7f0c00a9

    const v8, 0x7f020173

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_14
    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x3

    const v7, 0x7f0c00aa

    const v8, 0x7f02016e

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x1

    const v7, 0x7f0c00ab

    const v8, 0x7f020176

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    const-string v2, "com.sec.android.app.camera"

    const/4 v4, 0x4

    const v7, 0x7f0c00ac

    const v8, 0x7f02016f

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto :goto_3

    :cond_15
    const/16 v1, 0xc

    move/from16 v0, p2

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v2, "com.sec.android.app.myfiles"

    const/4 v4, 0x2

    const v7, 0x7f0c00ad

    const v8, 0x7f02016c

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v2, "com.sec.android.app.voicerecorder"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    const v8, 0x7f020174

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v2, "com.sec.android.app.voicenote"

    const/4 v4, 0x5

    const v7, 0x7f0c00ae

    const v8, 0x7f020174

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IJII)Z

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method
