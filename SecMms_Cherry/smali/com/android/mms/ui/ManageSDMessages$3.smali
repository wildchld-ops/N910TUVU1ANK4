.class Lcom/android/mms/ui/ManageSDMessages$3;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSDMessages;->getSDList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$3;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/lang/String;

    const-string v0, ".vmg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
