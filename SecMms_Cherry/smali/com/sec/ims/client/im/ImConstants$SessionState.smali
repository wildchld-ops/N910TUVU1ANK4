.class public interface abstract Lcom/sec/ims/client/im/ImConstants$SessionState;
.super Ljava/lang/Object;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionState"
.end annotation


# static fields
.field public static final ACCEPTING:I = 0x5

.field public static final CLOSED_BY_REMOTE:I = 0x7

.field public static final CLOSED_BY_USER:I = 0x8

.field public static final CLOSED_IN_IDLE:I = 0xb

.field public static final CLOSING:I = 0x6

.field public static final ESTABLISHED:I = 0x3

.field public static final INITIAL:I = 0x0

.field public static final PAUSED:I = 0xa

.field public static final PENDING_INVITE:I = 0x4

.field public static final REJOINING:I = 0x9

.field public static final STARTED:I = 0x2

.field public static final STARTING:I = 0x1
