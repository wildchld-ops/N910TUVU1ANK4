.class Lcom/android/settings/nearby/NearbySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive(): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_0
    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "media mount changed: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isInitialStickyBroadcast: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v20

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/NearbyEnabler;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/NearbyEnabler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v21

    const-string v22, "0"

    invoke-virtual/range {v20 .. v22}, Lcom/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    :try_start_2
    const-string v20, "com.android.settings.connected_mediaServer"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$600(Lcom/android/settings/nearby/NearbySettings;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NotFoundException: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_4
    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v9

    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_5
    const-string v20, "com.android.settings.allshare.UPDATE_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ACCEPTLIST"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "ACCEPTLIST"

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string v20, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v12

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v19

    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    if-eqz v12, :cond_8

    const/4 v11, 0x0

    :goto_3
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_8

    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Index: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v12, v11

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v12, v11

    aget-object v23, v10, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aget v20, v12, v11

    aget-object v20, v10, v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v19

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/NearbyEnabler;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const-string v20, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "NearbySettings"

    const-string v21, "BroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "LIST"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "LIST"

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/nearby/AcceptListPreference;->updateDialog()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    if-eqz v7, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v15

    if-eqz v15, :cond_4

    new-instance v14, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v15, v14}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v14, v7, v0, v1}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/nearby/RejectListPreference;->updateDialog()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    check-cast v7, Landroid/app/AlertDialog;

    if-eqz v7, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v15

    if-eqz v15, :cond_4

    new-instance v14, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v15, v14}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v14, v7, v0, v1}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_b
    const-string v20, "com.android.settings.allshare.ACTIVITY_START"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const-string v20, "FLAG"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$1;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v20, v0

    # getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/nearby/NearbySettings;->access$500(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0xbbb

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1
.end method
