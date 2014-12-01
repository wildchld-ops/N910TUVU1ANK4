.class public Lcom/android/settings/nearby/MountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountReceiver.java"


# static fields
.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_FROME:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_ONOFF:Ljava/lang/String; = "allshare_onoff"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final KEY_ALLSHARE_WELCOME_POPUP:Ljava/lang/String; = "allshare_welcome_popup"

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Download"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field private static final SHARE_VALUE_MUSIC:Ljava/lang/String; = "2"

.field private static final SHARE_VALUE_PHOTOS:Ljava/lang/String; = "1"

.field private static final SHARE_VALUE_VIDEOS:Ljava/lang/String; = "0"

.field private static final UPLOAD_ALWAYS_ASK:Ljava/lang/String; = "1"

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mPrefHandler:Landroid/os/Handler;


# instance fields
.field private final HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

.field private final HANDLER_MSG_INIT_PREF:I

.field private final HANDLER_MSG_ONOFF_FALSE:I

.field private final HANDLER_MSG_ONOFF_TRUE:I

.field private final SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

.field private final SETTINGS_SYSTEM_SHUTDOWN:Ljava/lang/String;

.field private final TAGClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    sput-object v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "MountReceiver"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->TAGClass:Ljava/lang/String;

    const-string v0, "NearbyDownloadTo"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

    const/16 v0, 0x1b59

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_TRUE:I

    const/16 v0, 0x1b5a

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_FALSE:I

    const/16 v0, 0x1b5b

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

    const-string v0, "shutdown_device"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->SETTINGS_SYSTEM_SHUTDOWN:Ljava/lang/String;

    const/16 v0, 0x1b62

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_INIT_PREF:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    move-object/from16 v12, p1

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    if-nez v21, :cond_2

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v21, :cond_0

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Create HandlerThread"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Landroid/os/HandlerThread;

    const-string v22, "Preference Handler Thread"

    invoke-direct/range {v21 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->isAlive()Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Start HandlerThread"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    :cond_1
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Create mPrefHandler"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/android/settings/nearby/MountReceiver$1;

    sget-object v22, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual/range {v22 .. v22}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v12}, Lcom/android/settings/nearby/MountReceiver$1;-><init>(Lcom/android/settings/nearby/MountReceiver;Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ACTION: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_5
    const-string v21, "pref_allshare"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v21, "allshare_download_to"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v21, "true"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "shutdown_device"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "SHUTDOWN PROCESS: RETURN!!"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v21, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    :cond_7
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "change path: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5b

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_8
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "there is no need to change download path."

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "com.sec.android.nearby.mediaserver.NEARBY_SERVER_STARTED"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v21, "storage"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/storage/StorageManager;

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object v4, v14

    array-length v11, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_c

    aget-object v13, v4, v9

    const-string v21, "sd"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "Sd"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    :cond_a
    move-object v8, v13

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/Download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_d

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "DOWNLOAD systemPath  is NULL"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v20, v10

    :cond_d
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Path: (systemPath)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", (internalPath)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", (externalPath)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Internal Path"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v21, "pref_allshare"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v21, "allshare_shared_contents"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v18

    if-nez v18, :cond_3

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v18, Ljava/util/HashSet;

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "2"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "1"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v21, "allshare_shared_contents"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "External Unmounted: Fix to Internal"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5b

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_f
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "External Path"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Wrong Path: Fix to Internal Default path"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5b

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "NearbyDownloadTo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_11
    const-string v21, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    const-string v21, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    const-string v21, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v21

    if-eqz v21, :cond_13

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isInitialStickyBroadcast: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v21, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    if-eqz v5, :cond_15

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    invoke-static {v12}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_14

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Set preference state off"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_14
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Keep current state"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    invoke-static {v12}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_16

    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Set preference state off"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b5a

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_16
    const-string v21, "MountReceiver"

    const-string v22, "onReceive"

    const-string v23, "Keep current state"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "android.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    sget-object v21, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    const/16 v22, 0x1b62

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
