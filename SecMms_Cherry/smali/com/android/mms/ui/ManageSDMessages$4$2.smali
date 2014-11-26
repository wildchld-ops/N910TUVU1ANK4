.class Lcom/android/mms/ui/ManageSDMessages$4$2;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSDMessages$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSDMessages$4;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$4$2;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4$2;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const/4 v1, 0x1

    # invokes: Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$700(Lcom/android/mms/ui/ManageSDMessages;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4$2;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->showMenu:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$902(Lcom/android/mms/ui/ManageSDMessages;Z)Z

    return-void
.end method
