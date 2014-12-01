.class Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field private mCheckedList:[I

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;[I)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I

    goto :goto_0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v1, 0x7f0c0184

    # invokes: Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1700(Lcom/android/mms/ui/ManageSimMessages;I)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
