class Pet < ApplicationRecord
    enum sex: {female: 0, male: 1, intersex: 2}
end
