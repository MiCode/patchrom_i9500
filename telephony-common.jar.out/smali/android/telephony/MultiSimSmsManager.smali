.class public Landroid/telephony/MultiSimSmsManager;
.super Ljava/lang/Object;
.source "MultiSimSmsManager.java"


# static fields
.field private static sInstance:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/MultiSimSmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault(I)Landroid/telephony/SmsManager;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 28
    sget-object v0, Landroid/telephony/MultiSimSmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method
