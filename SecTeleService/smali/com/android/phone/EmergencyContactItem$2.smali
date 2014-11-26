.class Lcom/android/phone/EmergencyContactItem$2;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyContactItem;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem$2;->this$0:Lcom/android/phone/EmergencyContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem$2;->this$0:Lcom/android/phone/EmergencyContactItem;

    # invokes: Lcom/android/phone/EmergencyContactItem;->placeCall()V
    invoke-static {v0}, Lcom/android/phone/EmergencyContactItem;->access$200(Lcom/android/phone/EmergencyContactItem;)V

    return-void
.end method
