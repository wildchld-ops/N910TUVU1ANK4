.class Lcom/android/mms/ui/ComposeMessageFragment$136$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$136;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$136;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$136;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$136$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$136;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$136$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$136;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$136;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshLocation()V

    return-void
.end method
