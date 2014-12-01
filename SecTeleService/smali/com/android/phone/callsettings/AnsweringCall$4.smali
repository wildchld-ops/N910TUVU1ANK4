.class Lcom/android/phone/callsettings/AnsweringCall$4;
.super Ljava/lang/Object;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AnsweringCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AnsweringCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AnsweringCall$4;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall$4;->this$0:Lcom/android/phone/callsettings/AnsweringCall;

    # getter for: Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/callsettings/AnsweringCall;->access$000(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method
