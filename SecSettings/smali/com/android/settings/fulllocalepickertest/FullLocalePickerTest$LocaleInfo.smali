.class public Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;
.super Ljava/lang/Object;
.source "FullLocalePickerTest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .parameter "label"
    .parameter "locale"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->locale:Ljava/util/Locale;

    .line 51
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;)I
    .locals 3
    .parameter "another"

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->compareTo(Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
