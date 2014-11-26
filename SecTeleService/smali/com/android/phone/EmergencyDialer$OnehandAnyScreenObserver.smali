.class Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;
.super Landroid/database/ContentObserver;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnehandAnyScreenObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method public constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;->this$0:Lcom/android/phone/EmergencyDialer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$OnehandAnyScreenObserver;->this$0:Lcom/android/phone/EmergencyDialer;

    # invokes: Lcom/android/phone/EmergencyDialer;->recreateEmergencyDialer()V
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)V

    return-void
.end method
