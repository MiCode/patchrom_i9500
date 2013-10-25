.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
.super Landroid/widget/LinearLayout;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static final mTimeFormat:Ljava/lang/String; = "h:mm"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field mCalendar:Ljava/util/Calendar;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mSamsungNumTypeface:Landroid/graphics/Typeface;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    .line 94
    new-instance v0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->initClock(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 206
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 207
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 208
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 210
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 211
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 212
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 216
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 219
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 114
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SAMSUNG_CLOCK_NUMERALS.TTF"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    .line 132
    :cond_1
    return-void
.end method

.method private onTimeChanged()V
    .locals 5

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    const-string v3, "kk:mm"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const-string v3, "AA"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 177
    const-string v0, ""

    .line 178
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, value:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x10400dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    return-void

    .line 170
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    const-string v3, "h:mm"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 181
    .restart local v0       #dateFormat:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    :cond_4
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 229
    const-string v0, ""

    .line 231
    .local v0, TTSMessage:Ljava/lang/String;
    const-string v1, ""

    .line 232
    .local v1, dateFormat:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, value:Ljava/lang/String;
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x10400d7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 241
    .local v2, dateText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 242
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIs24HTime:Z

    if-eqz v5, :cond_3

    .line 243
    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, mTTSTime:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0

    .line 235
    .end local v2           #dateText:Ljava/lang/CharSequence;
    .end local v3           #mTTSTime:Ljava/lang/String;
    :cond_2
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    iget-object v5, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mContext:Landroid/content/Context;

    const v6, 0x10400d8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 245
    .restart local v2       #dateText:Ljava/lang/CharSequence;
    :cond_3
    const-string v5, "h:mm"

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .restart local v3       #mTTSTime:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->onTimeChanged()V

    .line 149
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mFormatChangeObserver:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 137
    const v0, 0x10203fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x10203fb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    .line 139
    const v0, 0x10203fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mAmPm:Landroid/widget/TextView;

    .line 140
    const v0, 0x10203fd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mDayofWeek:Landroid/widget/TextView;

    .line 141
    const v0, 0x10203fe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mMonthandDay:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mSamsungNumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method
