.class public abstract Lcom/android/mms/rcs/transaction/ImBaseTransaction;
.super Ljava/lang/Object;
.source "ImBaseTransaction.java"

# interfaces
.implements Lcom/android/mms/rcs/transaction/ImObserver;


# static fields
.field public static final RCS_CHAT_RECEIVE_TRANSACTION:I = 0x1

.field public static final RCS_CHAT_SEND_TRANSACTION:I = 0x0

.field public static final RCS_FT_RECEIVE_TRANSACTION:I = 0x3

.field public static final RCS_FT_SEND_TRANSACTION:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field private final mServiceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mServiceId:I

    return-void
.end method


# virtual methods
.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/android/mms/rcs/transaction/ImBaseTransaction;->mServiceId:I

    return v0
.end method

.method public abstract getType()I
.end method
