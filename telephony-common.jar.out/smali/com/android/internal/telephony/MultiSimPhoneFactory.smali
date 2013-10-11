.class public Lcom/android/internal/telephony/MultiSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MultiSimPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 25
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method
