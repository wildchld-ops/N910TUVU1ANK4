.class Lcom/android/settings/AirButtonHelp$8$2;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AirButtonHelp$8;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$8$2;->this$1:Lcom/android/settings/AirButtonHelp$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$8$2;->this$1:Lcom/android/settings/AirButtonHelp$8;

    iget-object v0, v0, Lcom/android/settings/AirButtonHelp$8;->this$0:Lcom/android/settings/AirButtonHelp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/AirButtonHelp;->onClickEnableSettingsButtonOK(I)V

    return-void
.end method
