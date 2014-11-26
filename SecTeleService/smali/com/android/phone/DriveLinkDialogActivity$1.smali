.class Lcom/android/phone/DriveLinkDialogActivity$1;
.super Ljava/lang/Object;
.source "DriveLinkDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DriveLinkDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DriveLinkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/DriveLinkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/phone/CallTextToSpeech;

    iget-object v0, p0, Lcom/android/phone/DriveLinkDialogActivity$1;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/DriveLinkDialogActivity;->finish()V

    return-void
.end method
