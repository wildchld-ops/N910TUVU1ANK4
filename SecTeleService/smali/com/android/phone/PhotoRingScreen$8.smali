.class Lcom/android/phone/PhotoRingScreen$8;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoRingScreen;->checkMobileData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$2302(Lcom/android/phone/PhotoRingScreen;Z)Z

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$8;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v0}, Lcom/android/phone/PhotoRingScreen;->finish()V

    return-void
.end method
