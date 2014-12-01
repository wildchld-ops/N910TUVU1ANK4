.class Lcom/android/phone/EmergencyCallList$1;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/EmergencyCallList;->access$000(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/phone/EmergencyCallList;->access$100(Lcom/android/phone/EmergencyCallList;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$1;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-virtual {v1, v0}, Lcom/android/phone/EmergencyCallList;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
