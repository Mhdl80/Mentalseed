local numbers = {}
numbers['ا'] = 1
numbers['ب'] = 2
numbers['ج'] = 3
numbers['د'] = 4
numbers['ه'] = 5
numbers['و'] = 6
numbers['ز'] = 7
numbers['ح'] = 8
numbers['ط'] = 9
numbers['ی'] = 10
numbers['ک'] = 20
numbers['ل'] = 30
numbers['م'] = 40
numbers['ن'] = 50
numbers['س'] = 60
numbers['ع'] = 70
numbers['ف'] = 80
numbers['ص'] = 90
numbers['ق'] = 100
numbers['ر'] = 200
numbers['ش'] = 300
numbers['ت'] = 400
numbers['ث'] = 500
numbers['خ'] = 600
numbers['ذ'] = 700
numbers['ض'] = 800
numbers['ظ'] = 900
numbers['غ'] = 900
local function convert(text)
    local text = text:gsub('ژ','ز')
    local text = text:gsub('گ','ک')
    local text = text:gsub('چ','ج')
    local text = text:gsub('پ','ب')
    local text = text:gsub('ئ','ی')
    local text = text:gsub('آ','ا')
    local text = text:gsub('ۀ','ه')
    local text = text:gsub('ي','ی')
    local text = text:gsub('ة','ه')
    local text = text:gsub('ؤ','و')
    return text
end
local function abjad(text,num,str)
    local num = num
    local text = text
    if text:match(str) then
for word in string.gmatch(text, str) do num = num + numbers[str]
end
text = text:gsub(str,'')
