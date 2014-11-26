.class public Lcom/android/mms/rcs/transaction/FallbackBundle;
.super Ljava/lang/Object;
.source "FallbackBundle.java"


# static fields
.field public static final CHAT_ID:Ljava/lang/String; = "session_id"

.field public static final MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 3
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/FallbackBundle;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/FallbackBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/FallbackBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/FallbackBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getChatId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/FallbackBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/FallbackBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "msg_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/FallbackBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
