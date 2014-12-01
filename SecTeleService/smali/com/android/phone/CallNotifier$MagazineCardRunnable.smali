.class Lcom/android/phone/CallNotifier$MagazineCardRunnable;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagazineCardRunnable"
.end annotation


# instance fields
.field c:Lcom/android/internal/telephony/Connection;

.field final date:J

.field mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Ljava/lang/String;J)V
    .locals 1
    .param p2    # Ljava/lang/String;
    .param p3    # J

    iput-object p1, p0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->c:Lcom/android/internal/telephony/Connection;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->date:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v5, "Add view button clicked. Adding card"

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    const/16 v23, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const/16 v8, 0xb00

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xb01

    move-wide/from16 v0, v27

    invoke-static {v4, v0, v1, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/phone/CallNotifier;->formatDate(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/CallNotifier;->access$2800(Lcom/android/phone/CallNotifier;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v5, "Avoid NULLEXCEPTION"

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    new-instance v14, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/phone/CallNotifier;->formatDate(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/CallNotifier;->access$2800(Lcom/android/phone/CallNotifier;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->getNumberMissedCalls()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add view button clicked. Adding card number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->getMissedCallNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09019f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/phone/CallNotifier;->isMultiUser:Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->c:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->c:Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->date:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v11, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v11, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v20, :cond_1

    move-object/from16 v20, v21

    :cond_1
    iget v4, v11, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v20

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "photo_uri"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "photo_uri"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "magazinecardservice"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/magazinecard/MagazineCardManager;

    const/4 v10, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMultiUser : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/phone/CallNotifier;->isMultiUser:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move/from16 v0, v22

    # invokes: Lcom/android/phone/CallNotifier;->getMissedUserCount(Landroid/content/ContentResolver;I)Z
    invoke-static {v6, v2, v0}, Lcom/android/phone/CallNotifier;->access$2900(Lcom/android/phone/CallNotifier;Landroid/content/ContentResolver;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    move/from16 v0, v22

    # invokes: Lcom/android/phone/CallNotifier;->getMissedUserCount(Landroid/content/ContentResolver;I)Z
    invoke-static {v4, v2, v0}, Lcom/android/phone/CallNotifier;->access$2900(Lcom/android/phone/CallNotifier;Landroid/content/ContentResolver;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/phone/CallNotifier;->isMultiUser:Z

    :cond_5
    if-nez v23, :cond_6

    sget-boolean v4, Lcom/android/phone/CallNotifier;->isMultiUser:Z

    if-eqz v4, :cond_c

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photoUri exist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    new-instance v25, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040062

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_3
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.android.phone.action.RECENT_CALLS"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x30000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "action"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected card ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$3000(Lcom/android/phone/CallNotifier;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$3000(Lcom/android/phone/CallNotifier;)I

    move-result v5

    const/high16 v6, 0x8000000

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    new-instance v9, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$3000(Lcom/android/phone/CallNotifier;)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setCardId(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v4

    sget v5, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->setCategory(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->build()Lcom/samsung/android/magazinecard/MagazineCardInfo;

    move-result-object v10

    if-nez v23, :cond_7

    sget-boolean v4, Lcom/android/phone/CallNotifier;->isMultiUser:Z

    if-eqz v4, :cond_e

    :cond_7
    sget-boolean v4, Lcom/android/phone/CallNotifier;->isMultiUser:Z

    if-eqz v4, :cond_d

    const v4, 0x7f0a015a

    const v5, 0x7f0201af

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_4
    const v4, 0x7f0a015c

    const v5, 0x7f0202f5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v4, 0x7f0a015d

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0a015b

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0a015f

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$3000(Lcom/android/phone/CallNotifier;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isCardExist(I)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v15, v10}, Lcom/samsung/android/magazinecard/MagazineCardManager;->updateCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Card added. ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mLastCardId:I
    invoke-static {v6}, Lcom/android/phone/CallNotifier;->access$3000(Lcom/android/phone/CallNotifier;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0901a1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    :cond_9
    iget v4, v11, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v5, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->mName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->getMissedCallNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "photo_uri"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "photo_uri"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v5, "photoUri doesn\'t exist"

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    new-instance v25, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallNotifier$MagazineCardRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040061

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_d
    const v4, 0x7f0a015a

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    goto/16 :goto_4

    :cond_e
    const v4, 0x7f0a00b9

    const v5, 0x7f0202f5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v4, 0x7f0a00e5

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0a006b

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0a0159

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v15, v10}, Lcom/samsung/android/magazinecard/MagazineCardManager;->addCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z

    goto/16 :goto_6
.end method
