.class Lcom/android/phone/NetworkModePreference$10$2;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkModePreference$10;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$10$2;->this$1:Lcom/android/phone/NetworkModePreference$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$10$2;->this$1:Lcom/android/phone/NetworkModePreference$10;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->changeDataService()V
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$1100(Lcom/android/phone/NetworkModePreference;)V

    return-void
.end method
