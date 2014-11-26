.class Lcom/android/phone/EmergencyDialer$5;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/phone/EmergencyDialer;->simSlotID:I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$800(Lcom/android/phone/EmergencyDialer;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    iput v1, v0, Lcom/android/phone/EmergencyDialer;->simSlotID:I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$5;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$800(Lcom/android/phone/EmergencyDialer;)V

    goto :goto_0
.end method
