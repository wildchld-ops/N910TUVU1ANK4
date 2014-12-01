.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .locals 4
    .param p1    # Landroid/database/Cursor;

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V

    const-string v1, "cnap_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    # setter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$2802(Lcom/android/phone/NotificationMgr;I)I

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    # setter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$2802(Lcom/android/phone/NotificationMgr;I)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$2800(Lcom/android/phone/NotificationMgr;)I

    move-result v1

    iput v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->presentation:I

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo constructed for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " presentation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->presentation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    # setter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$2802(Lcom/android/phone/NotificationMgr;I)I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    # setter for: Lcom/android/phone/NotificationMgr;->presentation:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$2802(Lcom/android/phone/NotificationMgr;I)I

    goto :goto_0
.end method


# virtual methods
.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 15
    .param p1    # I
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/graphics/Bitmap;
    .param p4    # Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished loading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    if-eqz v1, :cond_1

    move-object/from16 v13, p4

    check-cast v13, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v2, v13, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget v4, v13, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->presentation:I

    iget-object v5, v13, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    iget-wide v8, v13, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p4

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lcom/android/phone/NotificationMgr;->mLastMissedCallPhoto:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$2502(Lcom/android/phone/NotificationMgr;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1600(Lcom/android/phone/NotificationMgr;)Ljava/lang/String;

    move-result-object v2

    check-cast p4, Ljava/lang/Long;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    # invokes: Lcom/android/phone/NotificationMgr;->registerContextualEvent(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/NotificationMgr;->access$2600(Lcom/android/phone/NotificationMgr;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p4

    instance-of v1, v0, Landroid/app/Notification$Builder;

    if-eqz v1, :cond_5

    move-object/from16 v10, p4

    check-cast v10, Landroid/app/Notification$Builder;

    if-eqz p2, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_4
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # invokes: Lcom/android/phone/NotificationMgr;->registerMissedCallNotification(Landroid/app/Notification;)V
    invoke-static {v1, v14}, Lcom/android/phone/NotificationMgr;->access$1500(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p4

    instance-of v1, v0, Landroid/app/Notification$InboxStyle;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->mNotiBuilder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->mNotiBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_6
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->mNotiBuilder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_0

    new-instance v12, Landroid/app/Notification$InboxStyle;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->mNotiBuilder:Landroid/app/Notification$Builder;

    invoke-direct {v12, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0901a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v5}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$1600(Lcom/android/phone/NotificationMgr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v12}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->registerMissedCallNotification(Landroid/app/Notification;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$1500(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/phone/NotificationMgr;->mNotiBuilder:Landroid/app/Notification$Builder;

    goto/16 :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 36
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "call log query complete."

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    # setter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$802(Lcom/android/phone/NotificationMgr;I)I

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/phone/NotificationMgr;->missedCallNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$902(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call log cursor count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v5}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call log cursor count2 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->missedCallNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/NotificationMgr;->access$900(Lcom/android/phone/NotificationMgr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/NotificationMgr;->mIsBootCompleted:Z
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1002(Z)Z

    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v5, "query contacts for number: "

    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "null"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1200(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v2

    const/4 v3, -0x2

    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "number"

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing call log cursor."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "contact query complete."

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    check-cast v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    const/16 v29, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_5

    move-object/from16 v0, v26

    iput-object v0, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    :cond_5
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " found for phone: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v30

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    :cond_6
    if-eqz v29, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing contact cursor."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "Failed to find Uri for obtaining photo. Just send notification without it."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget v8, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->presentation:I

    iget-object v9, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-wide v12, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v5 .. v13}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "MISSED_CALL query complete."

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v27, p2

    check-cast v27, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL query counts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v14, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/NotificationMgr;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1302(Lcom/android/phone/NotificationMgr;Z)Z

    :cond_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const-string v2, "count"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL query duplicatedCount : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_a

    const-string v2, "feature_cnam"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "fname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v2, "lname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v18, :cond_17

    if-nez v22, :cond_17

    move-object/from16 v26, v18

    :cond_a
    :goto_3
    const-string v2, "dormant_set"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v2, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "-4"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_c
    :goto_4
    const/4 v2, 0x1

    if-ne v15, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09087d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_f

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1300(Lcom/android/phone/NotificationMgr;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, " ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_f
    if-eqz v23, :cond_11

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    const/4 v2, 0x1

    if-eq v14, v2, :cond_10

    const-string v2, ", "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_12
    const/16 v29, 0x0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-wide v5, v3, Lcom/android/phone/NotificationMgr;->mMissedCallPersonId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1300(Lcom/android/phone/NotificationMgr;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v29, :cond_1e

    :cond_13
    const/16 v33, 0x1

    :goto_5
    if-eqz v33, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual/range {v27 .. v27}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v3

    # invokes: Lcom/android/phone/NotificationMgr;->registerMissedCallNotification(Landroid/app/Notification;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1500(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/phone/NotificationMgr;->mMissedCallName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1602(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "support_contacts_osup"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mMissedCallEventDate:J
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$1700(Lcom/android/phone/NotificationMgr;)J

    move-result-wide v5

    # invokes: Lcom/android/phone/NotificationMgr;->checkingContextualEventPhoto(J)V
    invoke-static {v2, v5, v6}, Lcom/android/phone/NotificationMgr;->access$1800(Lcom/android/phone/NotificationMgr;J)V

    :cond_15
    if-nez v33, :cond_16

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v5}, Lcom/android/phone/NotificationMgr;->access$1200(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v5

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-static {v2, v3, v0, v5, v1}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    :cond_16
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_17
    if-nez v18, :cond_18

    if-eqz v22, :cond_18

    move-object/from16 v26, v22

    goto/16 :goto_3

    :cond_18
    if-eqz v18, :cond_19

    if-eqz v22, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_3

    :cond_19
    const-string v2, "bname"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_a

    const-string v2, "cnap_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_3

    :cond_1a
    const-string v2, "-2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    :cond_1b
    const-string v2, "-3"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    :cond_1c
    if-eqz v26, :cond_1d

    move-object/from16 v23, v26

    goto/16 :goto_4

    :cond_1d
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, v23

    # invokes: Lcom/android/phone/NotificationMgr;->getformattedNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/phone/NotificationMgr;->access$1400(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    :cond_1e
    const/16 v33, 0x0

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "MISSED_CALL_ID_TOKEN complete."

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL_ID query counts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    const/16 v20, 0x0

    const-wide/16 v34, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v25, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sput v2, Lcom/android/phone/NotificationMgr;->covermissedCallCount:I

    sput-object v25, Lcom/android/phone/NotificationMgr;->covermissedCallogArray:[I

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [J

    sput-object v2, Lcom/android/phone/NotificationMgr;->covermissedCallogTimeArray:[J

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1f

    :goto_6
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v2, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL_ID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/NotificationMgr;->covermissedCallogArray:[I

    aput v19, v2, v20

    sget-object v2, Lcom/android/phone/NotificationMgr;->covermissedCallogTimeArray:[J

    aput-wide v34, v2, v20

    add-int/lit8 v21, v20, 0x1

    aput v19, v25, v20

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_31

    move/from16 v20, v21

    :cond_1f
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    if-eqz v25, :cond_20

    move-object/from16 v0, v25

    array-length v2, v0

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr;->sendMissedCallLogID([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    # invokes: Lcom/android/phone/NotificationMgr;->SendMissedCallInfo([ILjava/lang/Long;)V
    invoke-static {v2, v0, v3}, Lcom/android/phone/NotificationMgr;->access$1900(Lcom/android/phone/NotificationMgr;[ILjava/lang/Long;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "MISSED_CALL_ID_TOKEN. Query result is None!"

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "AUTO_REJECTED_CALL_TOKEN query complete."

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v27, p2

    check-cast v27, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_REJECTED_CALL_TOKEN query counts : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_21
    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v2, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "-4"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_23
    :goto_7
    if-eqz v23, :cond_24

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    :cond_24
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual/range {v27 .. v27}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v3

    # invokes: Lcom/android/phone/NotificationMgr;->registerAutoRejectedCallNotification(Landroid/app/Notification;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$2000(Lcom/android/phone/NotificationMgr;Landroid/app/Notification;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_26
    const-string v2, "-2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_7

    :cond_27
    const-string v2, "-3"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_7

    :cond_28
    if-eqz v26, :cond_23

    move-object/from16 v23, v26

    goto :goto_7

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "AUTO_REJECTED_CALL_LOG_TOKEN query complete."

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    # setter for: Lcom/android/phone/NotificationMgr;->mNumberAutoRejectedCalls:I
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$2102(Lcom/android/phone/NotificationMgr;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_REJECTED_CALL_LOG_TOKEN mNumberAutoRejectedCalls : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mNumberAutoRejectedCalls:I
    invoke-static {v5}, Lcom/android/phone/NotificationMgr;->access$2100(Lcom/android/phone/NotificationMgr;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mNumberAutoRejectedCalls:I
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$2100(Lcom/android/phone/NotificationMgr;)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_29

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/NotificationMgr;->mIsBootCompletedforAutoRejected:Z
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$2202(Z)Z

    :cond_29
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v5, "AUTO_REJECTED_CALL_LOG_TOKEN query contacts for number: "

    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-nez v2, :cond_2b

    const-string v2, "null"

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$1200(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v2

    const/4 v3, -0x8

    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "number"

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "AUTO_REJECTED_CALL_LOG_TOKEN closing call log cursor."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_2b
    iget-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    goto :goto_8

    :pswitch_6
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    :cond_2c
    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_2d

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/NotificationMgr;->isDuplicateAutoRejectedNumber:Z
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$2302(Lcom/android/phone/NotificationMgr;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    move-object/from16 v0, v28

    # setter for: Lcom/android/phone/NotificationMgr;->DuplicateAutoRejectedNumber:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/phone/NotificationMgr;->access$2402(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)Ljava/lang/String;

    :cond_2d
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/NotificationMgr;->isDuplicateAutoRejectedNumber:Z
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$2302(Lcom/android/phone/NotificationMgr;Z)Z

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "contact query complete."

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NotificationMgr;->access$000(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    check-cast v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    const/16 v29, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " found for phone: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v30

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    :cond_2f
    if-eqz v29, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "closing contact cursor."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "Failed to find Uri for obtaining photo. Just send notification without it."

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NotificationMgr;->access$1100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v6, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget v8, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->presentation:I

    iget-object v9, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-wide v12, v4, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v5 .. v13}, Lcom/android/phone/NotificationMgr;->notifyAutoRejectedCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto :goto_9

    :cond_31
    move/from16 v20, v21

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
