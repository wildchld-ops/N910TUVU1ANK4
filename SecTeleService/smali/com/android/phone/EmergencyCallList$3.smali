.class Lcom/android/phone/EmergencyCallList$3;
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

    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/EmergencyCallList;->access$000(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/phone/EmergencyCallList;->access$100(Lcom/android/phone/EmergencyCallList;)I

    move-result v3

    aget-object v2, v2, v3

    # invokes: Lcom/android/phone/EmergencyCallList;->createCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/phone/EmergencyCallList;->access$200(Lcom/android/phone/EmergencyCallList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
