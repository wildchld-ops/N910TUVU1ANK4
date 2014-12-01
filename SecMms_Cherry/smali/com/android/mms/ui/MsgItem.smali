.class Lcom/android/mms/ui/MsgItem;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"


# instance fields
.field address:Ljava/lang/String;

.field body:Ljava/lang/String;

.field boxId:I

.field date:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/mms/ui/MsgItem;->boxId:I

    iput-object p2, p0, Lcom/android/mms/ui/MsgItem;->address:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/MsgItem;->date:Ljava/lang/String;

    return-void
.end method
