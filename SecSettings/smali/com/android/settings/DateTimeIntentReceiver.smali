.class public Lcom/android/settings_ex/DateTimeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;
    }
.end annotation


# static fields
.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final TAG:Ljava/lang/String; = "DateTimeIntentReceiver"

.field private static dialog_state:Z

.field private static mDialog:Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;


# instance fields
.field private autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private autoDateTimeLayout:Landroid/widget/LinearLayout;

.field private autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private autoTimezoneLayout:Landroid/widget/LinearLayout;

.field private close_button:Landroid/widget/Button;

.field private datetime:Landroid/widget/TextView;

.field private resources:Landroid/content/res/Resources;

.field private setup_button:Landroid/widget/Button;

.field private timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private timeFormatLayout:Landroid/widget/LinearLayout;

.field private timeformat:Landroid/widget/TextView;

.field private timezone:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->setup_button:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timezone:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->close_button:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timeformat:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput-boolean p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;)Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    sput-object p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->mDialog:Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoDateTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoDateTimeLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoTimezone:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->autoTimezoneLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DateTimeIntentReceiver;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/DateTimeIntentReceiver;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timeFormat:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->timeFormatLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->resources:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/DateTimeIntentReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeIntentReceiver;->datetime:Landroid/widget/TextView;

    return-object p1
.end method

.method private displayDialog(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 78
    const-string v2, "DateTimeIntentReceiver"

    const-string v3, "displayDialog()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    .line 81
    new-instance v2, Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090156

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;-><init>(Lcom/android/settings_ex/DateTimeIntentReceiver;Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/android/settings_ex/DateTimeIntentReceiver;->mDialog:Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, windowType:I
    :try_start_0
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "TYPE_STATUS_BAR_OVERLAY"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 95
    .local v0, field:Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/settings_ex/DateTimeIntentReceiver;->mDialog:Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setType(I)V

    .line 105
    sget-object v2, Lcom/android/settings_ex/DateTimeIntentReceiver;->mDialog:Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 107
    return-void

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0

    .line 100
    :catch_1
    move-exception v2

    goto :goto_0

    .line 99
    :catch_2
    move-exception v2

    goto :goto_0

    .line 98
    :catch_3
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SHOW_DATE_TIME_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "DateTimeIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOW_DATE_TIME_DIALOG is received, dialog_state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-boolean v1, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DateTimeIntentReceiver;->displayDialog(Landroid/content/Context;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v1, "com.android.systemui.statusbar.phone.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    :cond_2
    const-string v1, "DateTimeIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COLLAPSED is received, dialog_state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-boolean v1, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/DateTimeIntentReceiver;->dialog_state:Z

    .line 69
    sget-object v1, Lcom/android/settings_ex/DateTimeIntentReceiver;->mDialog:Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "DateTimeIntentReceiver"

    const-string v2, "dissmiss dialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v1, Lcom/android/settings_ex/DateTimeIntentReceiver;->mDialog:Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/DateTimeIntentReceiver$DateTimeDialog;->dismiss()V

    goto :goto_0
.end method
