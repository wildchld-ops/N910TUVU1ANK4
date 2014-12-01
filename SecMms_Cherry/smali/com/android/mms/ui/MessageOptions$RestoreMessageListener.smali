.class Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->execute()V

    return-void
.end method
