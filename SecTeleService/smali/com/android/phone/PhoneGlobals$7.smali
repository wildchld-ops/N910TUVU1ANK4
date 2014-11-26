.class Lcom/android/phone/PhoneGlobals$7;
.super Landroid/database/ContentObserver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneGlobals;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$7;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$7;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$7;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->OnChangeInContent(I)V

    return-void
.end method
