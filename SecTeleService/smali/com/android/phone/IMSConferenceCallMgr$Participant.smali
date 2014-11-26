.class public Lcom/android/phone/IMSConferenceCallMgr$Participant;
.super Ljava/lang/Object;
.source "IMSConferenceCallMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Participant"
.end annotation


# instance fields
.field public mContactImage:Landroid/graphics/drawable/Drawable;

.field public mCreateTime:J

.field public mDuration:J

.field public mElapsedTime:J

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mPhoto_Uri:Ljava/lang/String;

.field public mStartDuration:J

.field public mState:Lcom/android/phone/IMSConferenceCallMgr$State;

.field public mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->setCallerDetailInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mPhoto_Uri:Ljava/lang/String;

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->getContactImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lcom/android/phone/IMSConferenceCallMgr;->access$000(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mContactImage:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$State;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$State;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    iput-wide v1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    iput-wide v1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStartDuration:J

    iput-wide v1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    iput-wide v1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mElapsedTime:J

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$Status;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mNumber        : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mName           : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mPhoto_Uri       : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mPhoto_Uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mState           : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mCreateTime    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mStartDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStartDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mDuration       : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mStatus          : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    return-void
.end method

.method public setCallerDetailInfo(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    const-string v3, "setCallerDetailInfo enter"

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/IMSConferenceCallMgr;->access$200(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mPhoto_Uri:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    const-string v3, "setCallerDetailInfo - number is null"

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/IMSConferenceCallMgr;->access$200(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "photo_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "display_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mName:Ljava/lang/String;

    const-string v2, "photo_uri"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mPhoto_Uri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    const-string v3, "setCallerDetailInfo end"

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/IMSConferenceCallMgr;->access$200(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mPhoto_Uri:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallerDetailInfo - Exception !!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/IMSConferenceCallMgr;->access$200(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    throw v2
.end method

.method public setStatus(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/phone/IMSConferenceCallMgr$State;)V
    .locals 3
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$State;
    .param p2    # Lcom/android/phone/IMSConferenceCallMgr$State;

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    :goto_1
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setStatus] done! status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->CONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/phone/IMSConferenceCallMgr$State;->isONHOLD()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->DISCONNECTED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->FAILED:Lcom/android/phone/IMSConferenceCallMgr$Status;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/android/phone/IMSConferenceCallMgr$State;->isWAITING()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->WAITING:Lcom/android/phone/IMSConferenceCallMgr$Status;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/phone/IMSConferenceCallMgr$Status;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$Status;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStatus:Lcom/android/phone/IMSConferenceCallMgr$Status;

    goto :goto_1
.end method

.method public update(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$State;
    .param p2    # Lcom/android/internal/telephony/Connection;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/IMSConferenceCallMgr$Participant;->setStatus(Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/phone/IMSConferenceCallMgr$State;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[update] connection is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Participant, [update] return because of same state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/phone/IMSConferenceCallMgr$State;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->this$0:Lcom/android/phone/IMSConferenceCallMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Participant, [update] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/IMSConferenceCallMgr;->access$100(Lcom/android/phone/IMSConferenceCallMgr;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStartDuration:J

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/phone/IMSConferenceCallMgr$State;->isDISCONNECTED()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mState:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr$State;->isACTIVE()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mStartDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mDuration:J

    goto :goto_1

    :cond_6
    iget-wide v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mCreateTime:J

    goto :goto_1
.end method
