.class Lcom/android/phone/RoamingAutoDialOption$1;
.super Ljava/lang/Object;
.source "RoamingAutoDialOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingAutoDialOption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialOption;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingAutoDialOption;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialOption$1;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onClick: negative button"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/RoamingAutoDialOption$1;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    # setter for: Lcom/android/phone/RoamingAutoDialOption;->isFinishing:Z
    invoke-static {v0, v2}, Lcom/android/phone/RoamingAutoDialOption;->access$002(Lcom/android/phone/RoamingAutoDialOption;Z)Z

    iget-object v0, p0, Lcom/android/phone/RoamingAutoDialOption$1;->this$0:Lcom/android/phone/RoamingAutoDialOption;

    invoke-virtual {v0}, Lcom/android/phone/RoamingAutoDialOption;->finish()V

    return-void
.end method
