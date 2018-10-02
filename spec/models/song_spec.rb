RSpec.describe Song do

  describe 'Validations' do
    it 'should not be valid without a title' do
      song = Song.create(length: 403, play_count: 10)

      expect(song).to_not be_valid
    end

    it 'should not be valid without a length' do
      song = Song.create(title: "new song", play_count: 0)

      expect(song).to_not be_valid
    end
  end

  describe 'Class methods' do
    describe '.total_play_count' do
      it 'returns the total play count for all songs' do

        Song.create(title: 'xyz', length: 403, play_count: 10)
        Song.create(title: 'abc', length: 302, play_count: 12)
        Song.create(title: 'def', length: 421, play_count: 13)

        count = Song.total_play_count

        expect(count).to eq(35)
      end

      describe '.average_play_count' do
        it 'returns the average of the total play count for all songs' do

          Song.create(title: 'xyz', length: 403, play_count: 10)
          Song.create(title: 'abc', length: 302, play_count: 12)

          average = Song.average_play_count

          expect(average).to eq(11)
        end
      end
    end
  end
end
