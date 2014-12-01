.class public Lcom/android/phone/ResetSettingListener;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettingListener.java"


# static fields
.field private static DefaultMessage:Ljava/lang/String;

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field private static final RESET_COUNTRY_DETAILS:Landroid/net/Uri;

.field public static defaultRejectMsgList:[Ljava/lang/String;


# instance fields
.field private autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

.field autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

.field private autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

.field autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

.field rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ResetSettingListener;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const-string v0, "content://assisteddialing/mcc_otalookup/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ResetSettingListener;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    const-string v0, "default_message"

    sput-object v0, Lcom/android/phone/ResetSettingListener;->DefaultMessage:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "callsettings_rejectmessage_list1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "callsettings_rejectmessage_list2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "callsettings_rejectmessage_list3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "callsettings_rejectmessage_list4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "callsettings_rejectmessage_list5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ResetSettingListener;->defaultRejectMsgList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/ResetSettingListener;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private resetAssistedDialingSetting()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "ResetSettingListener"

    const-string v2, "resetAssistedDialingSetting start"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/phone/ResetSettingListener;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/android/phone/ResetSettingListener;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/android/phone/ResetSettingListener;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    const-string v1, "ResetSettingListener"

    const-string v2, "resetAssistedDialingSetting end"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetAutoRejectCallSetting()V
    .locals 3

    const-string v1, "ResetSettingListener"

    const-string v2, "resetAutoRejectCallSetting start"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectDB;

    iget-object v2, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/ResetSettingListener;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    iget-object v2, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ResetSettingListener;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS reject_num"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS reject_outgoingcall_num"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE reject_num (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_number TEXT NOT NULL,reject_checked INTEGER,reject_match INTEGER);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE reject_outgoingcall_num (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_number TEXT NOT NULL,reject_checked INTEGER,reject_match INTEGER);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autoreject_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autoreject:Lcom/android/phone/callsettings/AutoRejectDB;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectDB;->close()V

    iget-object v1, p0, Lcom/android/phone/ResetSettingListener;->autorejectoutgoingcall:Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/AutoRejectOutgoingCallDB;->close()V

    const-string v1, "ResetSettingListener"

    const-string v2, "resetAutoRejectCallSetting end"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ResetSettingListener"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetRejectWithMsgSetting()V
    .locals 6

    const-string v3, "ResetSettingListener"

    const-string v4, "resetRejectWithMsgSetting start"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    iget-object v4, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "DROP TABLE IF EXISTS reject_msg"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "CREATE TABLE reject_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_message TEXT NOT NULL,edit_checked INTEGER NOT NULL,remind_time INTEGER NOT NULL);"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/android/phone/ResetSettingListener;->defaultRejectMsgList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    const/16 v0, 0x3c

    :goto_2
    iget-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' , \'REMIND_TIME\') values (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/ResetSettingListener;->DefaultMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' , 0 ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "ResetSettingListener"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v3, p0, Lcom/android/phone/ResetSettingListener;->rejectmsg:Lcom/android/phone/callsettings/RejectCallWithMsgDB;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->close()V

    const-string v3, "ResetSettingListener"

    const-string v4, "resetRejectWithMsgSetting end"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetSettingProvideCallSetting()V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "ResetSettingListener"

    const-string v3, "resetSettingProvideCallSetting start"

    invoke-static {v0, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoreject_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoreject_outgoingcall_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "anykey_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_input_control_incomming_calls"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "proximity_sensor"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_answer_vib"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_end_vib"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_conn_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "min_minder"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_end_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "alertoncall_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "popup_incoming_call"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "answeringmode_auto_time"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bluetooth_headset_call_condition"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vibrate_when_ringing"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voicecall_eq_list_value"

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_noise_reduction"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "extra_ringer"

    const-string v0, "extra_ringer_default_on"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_auto_retry"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_tty_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voicecall_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "volteVTEnabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "ResetSettingListener"

    const-string v1, "resetSettingProvideCallSetting end"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private resetSharedprefCallSetting()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "ResetSettingListener"

    const-string v3, "resetSharedprefCallSetting start"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "autoreject_mode_enable_sharedpref"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoreject_outgoingcall_mode_enable_sharedpref"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "automatic_answering_enable_sharedpref"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "vm_number_key_cdma"

    const-string v3, "*86"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "button_voicemail_notification_ringtone_key"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "ResetSettingListener"

    const-string v3, "resetSettingProvideCallSetting end"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "ResetSettingListener"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "support_setting_soft_reset"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ResetSettingListener;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/ResetSettingListener;->resetSettingProvideCallSetting()V

    invoke-direct {p0}, Lcom/android/phone/ResetSettingListener;->resetSharedprefCallSetting()V

    invoke-direct {p0}, Lcom/android/phone/ResetSettingListener;->resetAssistedDialingSetting()V

    invoke-direct {p0}, Lcom/android/phone/ResetSettingListener;->resetRejectWithMsgSetting()V

    invoke-direct {p0}, Lcom/android/phone/ResetSettingListener;->resetAutoRejectCallSetting()V

    goto :goto_0
.end method
