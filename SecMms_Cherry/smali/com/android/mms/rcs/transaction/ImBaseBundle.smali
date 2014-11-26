.class public Lcom/android/mms/rcs/transaction/ImBaseBundle;
.super Ljava/lang/Object;
.source "ImBaseBundle.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BOXTYPE:Ljava/lang/String; = "box_type"

.field public static final CHAT_ID:Ljava/lang/String; = "session_id"

.field public static final GROUP:Ljava/lang/String; = "group"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final SERVICETYPE:Ljava/lang/String; = "service_type"

.field public static final SINGLE:Ljava/lang/String; = "single"

.field public static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "Mms/ImBaseBundle"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TRANSPORT_TYPE:Ljava/lang/String; = "transport_type"

.field public static final URI:Ljava/lang/String; = "uri"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # J
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # I
    .param p9    # I
    .param p10    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/rcs/transaction/ImBaseBundle;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    if-eqz p5, :cond_0

    const-string v0, "Mms/ImBaseBundle"

    const-string v1, "chatId is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "transport_type"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "address"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mode"

    invoke-static {p7}, Lcom/android/mms/rcs/RcsChatManager;->getSizeOfRecipient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "status"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "box_type"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "service_type"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoxType()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "box_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceType()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "service_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getThreadId()J
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransportType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "transport_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/ImBaseBundle;->mBundle:Landroid/os/Bundle;

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/rcs/transaction/ImBaseBundle;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
